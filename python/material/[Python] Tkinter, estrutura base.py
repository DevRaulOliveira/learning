import tkinter as tk

root = tk.Tk()
root.title('Aplicação em Python')

root.geometry('400x400')
label = tk.Label(root,text ='Olá mundo!')
label.pack(pady=10)

button = tk.Button(root, text = 'Clique aqui', command=lambda:print('Botão clicado!'))
button.pack(pady=10)

root.mainloop()

