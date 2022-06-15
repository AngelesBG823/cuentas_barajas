#Crear clases Usuario y CuentaBancaria
class Usuario
end

class CuentaBancaria
end

#Constructor de la clase CuentaBanacaria con nombre del banco, número de cuenta y saldo, que por defecto será cero

class CuentaBancaria
    attr_accessor :saldo

    def initialize (nombreBanco, num_cuenta, saldo=0)
        @nombreBanco = nombreBanco
        @num_cuenta = num_cuenta
        @saldo = saldo
    end

#método transferir que reciba un monto y otra cuenta. Este método restará del saldo actual el monto y aumentará el saldo de la otra cuenta en el mismo monto.
    def transferir (monto, otra_cuenta)
    @saldo -= monto
    otra_cuenta.saldo += monto
    end   
end

#probar creando 2 cuentas con saldo 5000 y tranferir el total de una cuenta a la otra

cuenta1 = CuentaBancaria.new("banco1", "0001", 5000)
cuenta2 = CuentaBancaria.new("banco2", "0002", 5000)

#transferencia
cuenta1.transferir(5000, cuenta2)

#constructor Usuario
class Usuario 
    attr_accessor :nombre, :cuentas
    def initialize (nombre, cuenta)
        @nombre = nombre
        @cuentas = []
        @cuentas.push cuenta
        @arraycuentas  
    end

    def saldo_total
        @arraycuentas = @cuentas.map do |i|
            i.saldo
        end
        @arraycuentas.sum 
    end 
end