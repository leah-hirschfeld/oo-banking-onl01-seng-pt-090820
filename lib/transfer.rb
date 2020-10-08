class Transfer
  
  attr_accessor :sender, :receiver, :amount, :status
  
  def initialize(sender,receiver,amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    sender.valid? && receiver.valid?
  end

  def execute_transaction
    # BankAccount.balance
    if sender.valid? && receiver.valid?
      sender.balance -= amount
    else
      
    end
  end
  
  def reverse_transfer
    #return sender.amount from Transfer to sender.balance BankAccount
  end
end