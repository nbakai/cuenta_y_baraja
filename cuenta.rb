class CuentaBancaria

    attr_accessor :saldo, :monto
    attr_reader :banco, :numero_de_cuenta, :saldo_otra_cuenta

    def initialize(banco, numero_de_cuenta, saldo=0)
        @banco = banco
        @numero_de_cuenta = numero_de_cuenta
        @saldo = saldo
    end
    def transferir(monto, otra_cuenta)
        @saldo_otra_cuenta = otra_cuenta
        @saldo -= monto
        @saldo_otra_cuenta += monto
    end
end


class Usuario < CuentaBancaria
    
    def initialize(nombre_usuario, cuenta_bancaria)
        super
       @nombre_usuario = nombre_usuario
       @cuenta_bancaria = numero_de_cuenta
    end
    def saldo_total
        puts "Su saldo total #{@saldo}"
    end
end

nombres = []
nombres.push('mel')
cuentas = []
cuentas.push("Banco Estado, 123456, 25000")
usuario1 = Usuario.new(nombres,cuentas)
persona1 = CuentaBancaria.new('Banco Estado', 123456, 25000)
persona2 = CuentaBancaria.new('Banco Santander',123467,5000)
persona1.transferir(5000, 123467)
persona1.saldo_total

