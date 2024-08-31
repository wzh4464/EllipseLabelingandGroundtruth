function [structXML] = readXMLFile(filename)
% xDoc = xmlread(fullfile(matlabroot,'toolbox/matlab/general/info.xml'));

xDoc = xmlread(filename);
% structXML.name=strvcat(structXML.name, ['ellipse' num2str(input_sequence_count)]);
% structXML.x{end+1,1}=x.';
% structXML.y{end+1,1}=y.';
clear structXML

% Find a deep list of all listitem elements.
% allListItems = xDoc.getElementsByTagName('listitem');
allListItems = xDoc.getElementsByTagName('curve');

% Note that the item list index is zero-based.
itemValueX=[];itemValueY=[];
for k = 0:allListItems.getLength-1
    thisListItem = allListItems.item(k);
    curveListItemsName=thisListItem.item(1);
    structXML.name(k+1,:) = string(curveListItemsName.getTextContent);
    curveListPts = thisListItem.getElementsByTagName('pt');
    itemValueX=[];
    itemValueY=[];
    param_output=[];
    for pt_no=0:curveListPts.getLength-1
        thisPtItem = curveListPts.item(pt_no);
        childNode = thisPtItem.getFirstChild;
        while ~isempty(childNode)
            %Filter out text, comments, and processing instructions.
            if childNode.getNodeType == childNode.ELEMENT_NODE
                % Assume that each element has a single
                % org.w3c.dom.Text child.
                childText = char(childNode.getFirstChild.getData);
                
                switch char(childNode.getTagName)
                    case 'x';
                        itemValueX = [itemValueX;str2num(childText)];
                    case 'y' ;
                        itemValueY = [itemValueY;str2num(childText)];
                end
            end  % End IF
            childNode = childNode.getNextSibling;
        end  % End WHILE
    end
            structXML.x{k+1,1}=itemValueX.';
        structXML.y{k+1,1}=itemValueY.';

    curveListEllipse = thisListItem.getElementsByTagName('ellipse_data');
    thisEllipseDataItem=curveListEllipse.item(0);
    childNode = thisEllipseDataItem.getFirstChild;
    childNode = childNode.getNextSibling;
    for ii=1:4
        param_output(ii,1)=str2num(char(childNode.getFirstChild.getData));
        childNode = childNode.getNextSibling;
        childNode = childNode.getNextSibling;
    end
    param_output(5,1)=str2num(char(childNode.getFirstChild.getData));
    structXML.ellipse_param{k+1,1}=param_output;
end  % End FOR