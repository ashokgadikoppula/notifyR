
class NotifyR < ActionMailer::Base
  def notify_exception_to_developers(from_address, to_address, subject=nil, exception=nil, server_name=nil)
    unless from_address
      raise ArgumentError.new("From address is needed")
    end
    unless to_address
      raise ArgumentError.new("To address is needed")
    end
    unless subject
      subject = "Exception Notification"
    end
    unless server_name
      server_name = "--"
    end
    if exception
      email_body = get_email_body_from_exception(exception, server_name)
    else
      email_body = "An exception has occured. Please find and fix it."
    end
    mail(from: "\"Exception NotifyR\" <#{from_address}>", to: "#{to_address}", content_type: "text/html", subject: "#{subject}", body: email_body)
  end

  def get_email_body_from_exception exception, server_name
    str = "<table border='1' cellspacing='0' cellpadding='2' class='tbl' style='font-family: sans-serif; font-size: 8pt; border-collapse: collapse; border: 1px solid navy;'>
    <tbody>
      <tr class='hdr' style='background-color: #eaeaea; text-align: center;'>
        <td colspan='2'>An error was logged</td>
      </tr>
      <tr>
        <td class='lft'>ERROR SOURCE</td>
        <td>#{server_name}</td>
      </tr>
      <tr>
        <td class='lft'> MESSAGE</td>
        <td class='lftRed' style='color: red;'>#{exception.message}</td>
      </tr>
      <tr>
        <td class='lft'>STACK/TRACE</td>
        <td>#{exception.backtrace}</td>
      </tr>
      <tr>
        <td class='lft'>ERROR TYPE</td>
        <td>#{exception.class}</td>
      </tr>
    </tbody>
  </table>"
  return str
  end

end




