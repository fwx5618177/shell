#
#   生成菜单，并显示选中的价格
#
#   PS3是select的提示符，自动生成菜单
PS3="Please choose the menu: "

select menu in mifan huimian jiaozi babaozhou quit
do
    case $REPLY in
    1|4)
        echo "The price is 15."
        ;;
    2|3)
        echo "The price is 20."
        ;;
    5)
        break
        ;;
    *)
        echo "No the option."
    esac
done