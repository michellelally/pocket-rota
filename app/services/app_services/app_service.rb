module AppServices

  class RestrictionApiService
    def call
            require 'net/http'
            require 'json'
    
            @url = "https://json-restrictions-file.s3.eu-west-1.amazonaws.com/restrictions.json?response-content-disposition=inline&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEE8aCXVzLWVhc3QtMSJHMEUCICOWuTst2DAd0RENi5Y5bI3ODuRv1lffqZSevaeeFoz9AiEAoUzT836kGpnkI4na6jYQ3kg7dTEqDDK6N9pUiHpI%2FfwqjQMIeBAAGgw3NjY5MTEwNTgyNzMiDBg0YJiK4Vti%2FNdLOyrqAgsXMG14VZo5b2ox8L%2Bl3Q%2FydiSNj7Ue1e7b3WxKMmXkXHHumbnWNEVyayt6%2BjW4yFRSJhJuu6m0OMvep5UAORGtYUm6iOKo9zOalQvqOvAakB0XfdLaUh77O5Lk4oMK4V4EXqtLRHS2ng6Smx5CJpJ%2FK%2FjO9EbVsNPrYCS1DN5ZTFPtrcvRD%2BEa%2FQrgMXI6sGFSnF3RN2MT9aT55E6YhjG8bWj2dxs7MDMRhLbPyMVcadIMAoYkpRSn%2Bqky0siCFW%2F7IiizNcLSqg1lxiZKNa%2Bz8eu58fSb04psuDMEu39K7YXF3XX0K2Xcuagc6c6nSLCB7pFBV6uOAWYaKG6E6HTV32XpWTtkdG17PFGtw2tqO6MYHV1%2BrI0wcl4gJ0%2BANAA31TNfjFiegBdywm4foEqp4aZ7u4GIHbclA3CkH8vY4FEqh6QGAU6catrIIfoRgl8uugTbV69Ga9ExMz9Viby21JFXG23cWw7xMKeN74gGOrMC2kCPPdCB9S0c7nsEu8BHw3pvocdQkI4qo%2Fc1GaRltQA04uevSudRavChB%2BaoubSZ%2FlRbHjV2KJjAnC9O1iYmrzssUF3QWnHktD1lNlWEFRCzHgr35BI0dkh6HUlG02svymbu%2FpCLoE5JogD5U8tOyxOKbRsIKaQ%2BsXQtlHqvNeQTf4SRzs%2FQkunoYqkPZAQ1yR%2BU09hbnc6YTFTMaQTgldukRMWu4luqgiVgh%2FW6CsxA4ulznAOpF%2BZEfhUXoIHXoaZVXle8gcSizFdu2F2BSix%2B8EzN%2Bbnr2PiRgOD%2BF9zHrqFXNOs5IYNZH6%2FwdPpy6Y783kJGDllzJf2Uc25pR0D4ENmL4Jkt8l8i4e7zpdtA4tuomKUyfDDko98%2FsIBBMskAMWxv%2BLrC6wzJSufwVyQvgg%3D%3D&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20210817T142540Z&X-Amz-SignedHeaders=host&X-Amz-Expires=300&X-Amz-Credential=ASIA3FD3WCFQ66EJPCL7%2F20210817%2Feu-west-1%2Fs3%2Faws4_request&X-Amz-Signature=8cc95997a451fb0b6e0d161515f412da6acb0f64c1bfe22d9df873e0a7512245"
            @uri = URI(@url)
            @response = Net::HTTP.get(@uri)
            @output = JSON.parse(@response)
        
            if @output.empty?
              @final_output = "Error"
            else 
              @final_output = @output
            end
    end
  end
end 