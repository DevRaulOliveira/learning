# Para realizar a criação de uma api é preciso ter a biblioteca flask instalada
# Para realizar a instação do flask basta executar o comando 
#    pip install flask
from flask import Flask, request, jsonify

app = Flask(__name__)
@app.route('/', methods=['GET'])
  def home(): 
    return "Bem-vindo à API!"
    
@app.route('/dados', methods=['POST'])
def receber_dados():
  dados = request.get_json() 
  # Processar os dados conforme necessário return jsonify(dados), 201 
if __name__ == '__main__':
  app.run(debug=True)

# Para executar a API basta executar o arquivo "app.py"
#     python app.py
