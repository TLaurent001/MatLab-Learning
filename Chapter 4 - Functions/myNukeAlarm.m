function [response] = myNukeAlarm(S1,S2,S3)

if abs(S1-S2) > 10 || abs(S2-S3) > 10 || abs(S1-S3) > 10
    response = 'ALARM!!!';
else
    response = 'Systems Nominal!';
end

end
    