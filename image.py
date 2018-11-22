
import qrcode
ipa="https://www.qq.com/"
qr=qrcode.QRCode(version=1,
				 error_correction=qrcode.constants.ERROR_CORRECT_L,
				 box_size=12,
				 border=8,
				 )
qr.add_data(ipa)
qr.make(fit=True)
img=qr.make_image()
img.save('qr_code.png')