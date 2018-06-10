%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%FramePush函数功能：将帧放入缓冲区
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function ret = FramePush(FrameBuffer,n,FrameLength)
number = FrameBuffer(n,1);                                                 %取出当前缓冲区已存帧的个数，放在缓冲区的首部
if number < 1500                                                           %如果没超出帧缓冲区最大值，则放入缓冲区，否则丢弃
    FrameBuffer(n,number+2) = FrameLength;                                 %记录下此帧的长度
    FrameBuffer(n,1) = FrameBuffer(n,1) + 1;                               %缓冲区帧的个数加1
end
ret = FrameBuffer;
