BRANCH_NAME=$(git branch | grep '*' | sed 's/* //')
echo $BRANCH_NAME

INCLUDED_TICKET_ID=$([[ $BRANCH_NAME = feature/* || $BRANCH_NAME = hotfix/* ]])
echo $INCLUDED_TICKET_ID
