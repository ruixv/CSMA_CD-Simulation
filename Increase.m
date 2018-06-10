%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Increase函数功能：退避次数加1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function ret = Increase(CountBackoff,n)
BackoffTime = CountBackoff(n)+1;                                           %把指定节点的退避次数加1
ret = BackoffTime;
end