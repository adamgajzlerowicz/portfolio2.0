<script>
    import { filters, PROJECT_SECTION_ID } from '../../../../constants/common'
    import { selectedCategory } from '../../../../store'
    import SmallButton from '../../../../components/smallButton.svelte'
    import { scrollToView } from '../../../../utils'

    const onClick = category => {
      selectedCategory.set(category)
    }

    const onClickMobile = category => {
      selectedCategory.set(category)
      scrollToView(PROJECT_SECTION_ID)
    }
</script>

<div class="container">
    <ul class="category-list">
        <li class="item"><SmallButton onClick={() => onClick(null)} content="All"/></li>
        {#each filters as filter}
            <li class="item"><SmallButton onClick={() => onClick(filter)} content={filter}/></li>
        {/each}
    </ul>

    <ul class="category-list-mobile category-list">
        <li class="item"><SmallButton onClick={() => onClickMobile(null)} content="All"/></li>
        {#each filters as filter}
            <li class="item"><SmallButton onClick={() => onClickMobile(filter)} content={filter}/></li>
        {/each}
    </ul>
</div>

<style>
    .category-list {
        margin: 0 auto 70px;
        display: flex;
        flex-direction: row;
        justify-content: center;
        list-style-type: none;
        flex-wrap: wrap;
    }

    .item {
        margin-right: 20px;
        margin-bottom: 8px;
    }

    .category-list-mobile {
        display: none;
    }

    @media screen and (max-width: 500px) {
        .category-list {
            display: none;
        }

        .category-list-mobile {
            display: flex;
            margin: 0 auto 30px;
        }
    }
</style>
