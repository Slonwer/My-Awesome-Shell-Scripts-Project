
import redis

class PubSubDemo:
 def __init__(self):
 self.redis_client = redis.StrictRedis(host='localhost', port=6379, db=0)
 self.pubsub = self.redis_client.pubsub()
 self.pubsub.subscribe('canal')

 def publicar_mensagem(self, mensagem):
 self.redis_client.publish('canal', mensagem)

 def receber_mensagem(self):
 for mensagem in self.pubsub.listen():
 if mensagem['type'] == 'message':
 print('Mensagem Recebida:', mensagem['data'].decode())

if __name__ == "__main__":
 demo = PubSubDemo()
 demo.publicar_mensagem('Olá, mundo!')
