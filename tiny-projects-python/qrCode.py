"""
install all the libraries needed: pip3 install qrcode Image
create a function that collects a text and converts it to a qrcode
save the qrcode as an image
"""
import qrcode
from PIL import Image

def create_qrcode(text):
    qr = qrcode.QRCode(
            version=1,
            error_correction=qrcode.constants.ERROR_CORRECT_L,
            box_size=10,
            border=4,
        )
    qr.add_data(text)
    qr.make(fit=True)
    img = qr.make_image(fill_color="black", back_color="white")
    img.save("qrcode.png")

create_qrcode('https://github.com/arromero4/CodingAndChill/tree/main/tiny-projects-python')




















