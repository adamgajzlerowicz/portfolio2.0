<script>
    import SmallButton from '../../../../components/smallButton.svelte'
    export let index;
    export let project;
    export let close;
    export let open;
</script>

<div class="hidden" id={`index-${index}`}>
    <div class="modal">
        <div class="wrapper">
            <div class="title">{project.title}</div>
            <div class="imageWrapper">
                <img class="image" src="images/{project.image}" alt={project.title}/>
            </div>
            <div class="grid">
                <div class="label">Technologies used:</div>
                <div class="content">
                    {project.technologies.join(', ')}
                </div>
                <div class="label">Description:</div>
                <div class="content">{project.description}</div>
            </div>
        </div>
        <div class="close"><SmallButton onClick={close} content="Close"/></div>
    </div>
</div>

<style>
    .close {
        margin: 40px auto 0;
    }

    .hidden {
        display: none;
    }

    .modal {
        background: #fff;
        width: 50vw;
        padding: 32px;
        display: flex;
        flex-direction: column;
    }

    .image {
        max-width: 100%;
        max-height: 100%;
        margin: 0 auto;
        display: block;
    }

    .title {
        text-align: center;
        font-size: 20px;
        margin-bottom: 20px;
        font-weight: bold;
    }

    .wrapper {
        max-width: 1100px;
        width: 100%;
        margin: 0 auto;
    }

    .grid {
        margin-top: 24px;
        display: grid;
        grid-gap: 12px;
        grid-template-columns: auto 1fr;
    }

    .label {
        font-size: 14px;
        margin-right: 12px;
        font-weight: normal;
        text-decoration: underline;
    }

    .content {
        font-size: 14px;
    }

    .imageWrapper {
        max-height: 50vh;
        overflow: hidden;
        max-width: 1000px;
    }


    @media screen and (max-width: 500px) {
        .modal {
            width: 70vw;
            padding: 16px;
        }

        .grid {
            grid-template-columns: auto;
        }

        .label {
            margin-top: 8px;
            font-weight: bold;
            font-size: 14px;
        }

        .content {
            font-size: 16px;
        }
    }

</style>
