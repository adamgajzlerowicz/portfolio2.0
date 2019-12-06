<script>
    export let project
    export let index
    import basicLightbox from 'basiclightbox'
    import SmallButton from '../../../../components/smallButton.svelte'
    import Modal from './projectModal.svelte'
    import { hexToRgbaWithDefaults } from '../../../../utils'

    let box

    const showBox = () => {
      if (!box) {
        box = basicLightbox.create(document.querySelector(`#index-${index}`), {
          onClose: () => {
            document.querySelector('body').style.overflow = ''
          }
        })
      }
      box.show()
      document.querySelector('body').style.overflow = 'hidden'
    }

    const closeBox = () => {
      box.close()
    }
</script>

<div
    class="project"
    data-groups={JSON.stringify([project.category])}
    style="background-color:{hexToRgbaWithDefaults(project.backgroundColor)}">

    <div class="image-wrapper">
        <img
            src={`images/${project.image}`}
            alt={project.title}
            class="image"
        />
    </div>
    <div class="project-info" style="background-color:{project.backgroundColor || '#fff'}">
        <div class="project-details">
            <span class="title">{project.title}</span>
            <SmallButton onClick={showBox} content="Learn more"/>
        </div>
    </div>

    <div class="mobile-button">
        <SmallButton onClick={showBox} content="Learn more"/>
    </div>

    <Modal
        open={showBox}
        close={closeBox}
        project={project}
        index={index}
    />
</div>

<style>
    .title {
        text-align: center;
    }

    .mobile-button {
        display: none;
        width: 100%;
        flex-direction: row;
        justify-content: center;
        margin-top: 16px;
        margin-bottom: 16px;
    }

    .image-wrapper {
        width: 90%;
        max-height: 20vh;
        padding: 20px;
        overflow: hidden;
    }

    .image {
        max-width: 100%;
        max-height: 100%;
        margin: 0 auto;
        display: block;
    }

    .project {
        position: relative;
        width: 33.333%;
    }

    .project-info {
        transition-duration: 500ms;
        width: 100%;
        height: 100%;
        position: absolute;
        top: 0;
        left: 0;
        z-index: 1;
        opacity: 0;
        display: flex;
        align-items: center;
        justify-content: center;
    }

    .project-info:hover {
        opacity: 0.9;
    }

    .project-details {
        display: flex;
        flex-direction: column;
        justify-content: space-between;
        color: black;
        height: 50%;
        font-size: 22px;
    }

    @media screen and (max-width: 900px) {
        .project {
            width: 50%;
            margin-bottom: 16px;
        }
    }

    @media screen and (max-width: 500px) {
        .project-info {
            display: none;
        }

        .mobile-button {
            display: flex;
        }

        .project {
            width: 100%;
            margin-bottom: 16px;
        }
    }

    @media screen and (min-width: 500px) {
        .project {
            background: none !important;
        }
    }

</style>
