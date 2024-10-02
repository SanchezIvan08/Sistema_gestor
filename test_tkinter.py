import tkinter as tk

def run_tkinter_test():
    root = tk.Tk()
    root.title("Prueba de Tkinter")
    root.geometry("300x200")

    label = tk.Label(root, text="Tkinter está funcionando correctamente.")
    label.pack(pady=50)

    root.mainloop()

if __name__ == "__main__":
    run_tkinter_test()
    print("Prueba de Tkinter completada.")
