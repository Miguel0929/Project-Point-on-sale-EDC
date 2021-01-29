class Supplier < ApplicationRecord
    has_many :product
    validates :strNombreProveedor, :strDireccion, :strTelefono, :strCelular,presence: true
    validates :strNombreProveedor, length: { in: 10..100 }
    validates :strDireccion, length: { in: 10..200 }
    validates :strTelefono,:presence => true,
                 :numericality => true,
                 :length => { :minimum => 7, :maximum => 10 }
    validates :strCelular,:presence => true,
                 :numericality => true,
                 :length => { :minimum => 10, :maximum => 10 }
   
end
