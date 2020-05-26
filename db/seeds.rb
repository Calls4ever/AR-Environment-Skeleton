Pay.delete_all
Transfer.delete_all
Consumer.delete_all
Merchant.delete_all
BusinessAccount.delete_all
PersonalBank.delete_all
Payment.delete_all
JointAccount.delete_all

con0=Consumer.create(name: "Tsering")
con1=Consumer.create(name: "John")
con2=Consumer.create(name: "Bob")
con3=Consumer.create(name: "Charlie")

py0=Pay.create(amount: 230)
py1=Pay.create(amount: 208)
py2=Pay.create(amount: 5308)
py3=Pay.create(amount: 3508)
py4=Pay.create(amount: 408)

tf0=Transfer.create(amount: 454)
tf1=Transfer.create(amount: 454)
tf2=Transfer.create(amount: 44)
tf3=Transfer.create(amount: 434)
tf4=Transfer.create(amount: 124)

mt0=Merchant.create(name: "GOOGLE")
mt1=Merchant.create(name: "T-mobile")
mt2=Merchant.create(name: "Altice")
mt3=Merchant.create(name: "Facebook")
mt4=Merchant.create(name: "Apple")

ba=BusinessAccount.create(balance: 232323904)
ba1=BusinessAccount.create(balance: 232545904)
ba2=BusinessAccount.create(balance: 2332323904)
ba3=BusinessAccount.create(balance: 2556323904)
ba4=BusinessAccount.create(balance: 9989823904)
ba5=BusinessAccount.create(balance: 2545463904)

pb0=PersonalBank.create(balance: 2874859)
pb1=PersonalBank.create(balance: 874859)
pb2=PersonalBank.create(balance: 74859)
pb3=PersonalBank.create(balance: 984859)
pb4=PersonalBank.create(balance: 6574859)
pb5=PersonalBank.create(balance: 9074859)
pb6=PersonalBank.create(balance: 14859)

pmt0= Payment.create(merchant_id: 1, pay_id: 1, consumer_id: 2)
pmt1= Payment.create(transfer_id: 1, consumer_id: 1)
pmt2= Payment.create(consumer_id: 3, pay_id: 4, merchant_id: 3, transfer_id: 3)
pmt3= Payment.create()
pmt4= Payment.create()
pmt5= Payment.create()
pmt6= Payment.create()
pmt7= Payment.create()
pmt8= Payment.create()
pmt9= Payment.create()

jta0=JointAccount.create(merchant_id: 1, consumer_id: 2, personal_bank_id: 1, business_account_id: 2)
jta1=JointAccount.create(consumer_id: 3, personal_bank_id: 2)
jta2=JointAccount.create(consumer_id: 2, merchant_id:1, business_account_id:2, personal_bank_id: 3)
jta3=JointAccount.create(consumer_id: 2, merchant_id:2, personal_bank_id: 1, business_account_id: 2)
jta4=JointAccount.create()
jta5=JointAccount.create()
jta6=JointAccount.create()
jta7=JointAccount.create()



