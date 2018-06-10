%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% AddNode功能：记录节点信息
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function ret = AddNode(CollisionNodes,index)
CollisionNodes(1) = CollisionNodes(1) + 1;                                 %已统计多少个节点
i = CollisionNodes(1);                                                     %取出当前发送站的数目
CollisionNodes(i+1) = index;                                               %记录下是哪个站点
ret = CollisionNodes;                                                      %返回
