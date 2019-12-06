<script>
    import Shuffle from 'shufflejs';
    import { onMount } from 'svelte'
    import projects from '../../../constants/projects'
    import { PROJECT_SECTION_ID } from '../../../constants/common'
    import { selectedCategory } from '../../../store'
    import Filters from './components/filters.svelte'
    import Project from './components/project.svelte'

    onMount(() => {
      setTimeout(() => {
          const shuffleInstance = new Shuffle(document.querySelector('.projects'), {
              itemSelector: '.project',
              buffer: 1
          })

          selectedCategory.subscribe(category => {
              shuffleInstance.filter(category)
          })
      }, 1200)
    })
</script>

<div class="wrapper">
    <div id={PROJECT_SECTION_ID} class="container">
        <div class="title">
            Some of my past projects
        </div>
        <Filters />
        <div class="projects">
            {#each projects as project, index}
                <Project project={project} index={index}/>
            {/each}
        </div>
    </div>
</div>

<style>
    .wrapper {
        width: 100%;
    }

    .container {
        display: flex;
        padding: 16px 16px 30px;
        flex-direction: column;
    }

    .projects {
        min-height: 600px;
        margin: 0 auto;
        max-width: 1100px;
        display: flex;
        width: 100%;
        flex-wrap: wrap;
        justify-content: space-around;
    }

    .title {
        text-align: center;
        font-size: 50px;
        margin: 150px 0;
    }


    @media screen and (max-width: 500px) {
        .title {
            margin: 50px 0;
            font-size: 30px;
        }
    }

</style>

