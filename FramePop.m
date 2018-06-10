%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%FramePop函数功能：帧出栈
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function ret = FramePop(FrameBuffer,n)
FrameBuffer(n,:) = [FrameBuffer(n,1),FrameBuffer(n,3:1501),0];             %清除缓冲区头头部的帧记录
FrameBuffer(n,1) = FrameBuffer(n,1) - 1;                                   %将帧缓冲区数目减1
ret = FrameBuffer;
