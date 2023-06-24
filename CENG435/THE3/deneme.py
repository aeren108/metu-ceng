
class Hayvan:
    _can = 100

    def __init__(self, kilo, boy, renk):
        self.kilo = kilo
        self.boy = boy
        self.renk = renk

    def ses_cikar(self):
        print("Ben bir hayvanım")

    def canini_yak(self, miktar):
        if miktar > can or miktar < 0: 
            return

        can -= miktar

class Memeli(Hayvan):

    def __init__(self, kilo, boy, renk, yavru):
        super().__init__(kilo, boy, renk)
        self.yavru = yavru
    
    def ses_cikar(self):
        super().ses_cikar()
        print("Ben bit memeliyim")

    def memeli(self):
        print("Memeliii")

class Surungen(Hayvan):

    def __init__(self, kilo, boy, renk, yumurta):
        super().__init__(kilo, boy, renk)
        self.yumurta = yumurta
    
    def ses_cikar(self):
        print("Ben bir sürüngenim")


class At(Memeli):
    
    def kisne():
        print("aiiii")

def yazdir(m):
    print("Bu havanın rengi", m.renk, " Bu hayvanan bağırıyor: ")
    m.ses_cikar()
    m.memeli()


h = Hayvan(55, 40, "pembe")

zebra = Memeli(120, 110, "siyahbeyaz", 18)
zebra.can = -5

#zebra.ses_cikar()
yilan = Surungen(2, 287, "kahve", 1235)

at = At(120, 45, "kara", 156)

yazdir(zebra)
#yazdir(h)
#yazdir(yilan)
yazdir(at)

