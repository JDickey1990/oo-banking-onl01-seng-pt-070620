class Transfer

attr_accessor :sender, :receiver, :amount, :status
def initialize(sender, receiver, amount)
 @sender = sender
 @receiver = receiver
 @amount = amount
 @status = "pending"
end

def valid?
  sender.valid? && receiver.valid?
end

def execute_transaction(sender, receiver, amount)
      if valid? && sender.balance > sender.amount && @staus == "pending"
       sender.balance -= amount
        receiver.balance += amount
        @status = "complete"
       else @status = "rejected"
        "Transaction rejected. Please check your account balance."
      end
    end

end
