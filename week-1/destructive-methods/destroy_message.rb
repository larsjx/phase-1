def destroy_message(message)
  if message.match(/[:]/)
    return message.scan(/\D+:/).join(' ')
  else
    message
  end
end

def destroy_message!(message)
  if message.match(/[:]/)
     message.replace(message.match(/\D+:/).to_s)
  else
    message
  end
end

 p destroy_message!("Important: Learn how to learn.")