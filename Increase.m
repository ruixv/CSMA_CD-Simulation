%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Increase�������ܣ��˱ܴ�����1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function ret = Increase(CountBackoff,n)
BackoffTime = CountBackoff(n)+1;                                           %��ָ���ڵ���˱ܴ�����1
ret = BackoffTime;
end