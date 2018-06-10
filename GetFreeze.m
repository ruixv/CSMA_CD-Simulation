%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%GetFreeze函数功能：计算出冻结时间段
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [ ret index] =GetFreeze( RecordBackoffTime )
[i j] =size(RecordBackoffTime);                                            %i表示节点数，j表示总时隙数
ret = zeros(i,500,2);                                                       %ret记录退避时间段
index =zeros(1,i);                                                         %index是ret对应下标的记录值
NewRecord  = RecordBackoffTime;    
for ii=1:i
    for jj = 2:(j-1)
        if RecordBackoffTime(ii,jj-1)==RecordBackoffTime(ii,jj)&& RecordBackoffTime(ii,jj)==RecordBackoffTime(ii,jj+1)
           NewRecord(ii,jj) = RecordBackoffTime(ii,jj-1);                  %找出退避时间不变的时间段，即冻结时间段
        else
          NewRecord(ii,jj) = 0;                                            %其他部分置为0
        end
    end
end
RecordBackoffTime = NewRecord;
for ii=1:i
    for jj = 2:(j-1)
        if RecordBackoffTime(ii,jj-1)>RecordBackoffTime(ii,jj)             %找出冻结时间段起始点
            index(ii)=index(ii)+1;
            ret(ii,index(ii),1)=jj;                                        %并记录此刻时间
            ret(ii,index(ii),2)=RecordBackoffTime(ii,jj-1);                %并记录此刻的退避时间
        end
         if RecordBackoffTime(ii,jj-1)<RecordBackoffTime(ii,jj)            %找出冻结时间段的结束点
            index(ii)=index(ii)+1;
            ret(ii,index(ii),1)=jj;                                        %记录此刻的时间
            ret(ii,index(ii),2)=RecordBackoffTime(ii,jj);                  %并几率此刻的退避时间
        end
    end
end
end