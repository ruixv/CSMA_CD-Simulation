%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%RecordSend函数功能：将数据发送过程记录下来
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [RecordSendProcess SendNodeIndex] = RecordSend(RecordSendProcess,SendNodeIndex,i,SendStart,SendEnd,FrameLength )
SendNodeIndex(i)= SendNodeIndex(i)+1;                                      %更新下标
RecordSendProcess(i, SendNodeIndex(i),1)=SendStart;                        %记录发送起始时间
RecordSendProcess(i, SendNodeIndex(i),2)=SendEnd;                          %记录发送结束时间
RecordSendProcess(i, SendNodeIndex(i),3)=FrameLength;                      %记录帧长
end

