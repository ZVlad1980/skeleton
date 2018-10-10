#! /bin/bash

show_fol(){
    echo "Show folder: " `pwd`
    for fil in *
    do
        if [ -f $fil ]
        then
            echo "  ${fil}"
        elif [ -d $fil ]
        then
            cd `pwd`"/${fil}"
            show_fol 
            cd ..
        fi
    done
}
cd sql
show_fol `pwd`
cd ..
exit 0

cd sql
sql_fol=`pwd`
for fol in Table Packages PackageBodies;
do
if [ -d $fol ] 
then
cd $fol
echo `pwd`
cd $sql_fol
fi
done;
cd $curr_fol