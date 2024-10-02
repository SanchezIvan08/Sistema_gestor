from reportlab.pdfgen import canvas

def generate_pdf():
    c = canvas.Canvas("prueba.pdf")
    c.drawString(100, 750, "Este es un PDF de prueba generado con ReportLab.")
    c.save()

if __name__ == "__main__":
    generate_pdf()
    print("PDF generado correctamente.")
