User.create(username: 'just_seba_gc', password_digest: BCrypt::Password.create('Trancepro1!'))
User.create(username: 'tomas_gc', password_digest: BCrypt::Password.create('Tomas1!'))

Event.create(
  title: 'Future Event 1',
  description: 'Description for Future Event 1',
  dj_lineup: 'DJ 1, DJ 2',
  event_date: Date.parse('2023-12-31'),
  location: 'Location 1',
  ticket_price: 25.0
)

root_directory = Rails.root.join('/Users/mac/Desktop/GrooveCore Photos - PastEvents')

Dir.glob(root_directory.join('*')).each do |event_folder|
  # Create a PastEvent record for the event
  past_event = PastEvent.create(event: Event.find_by(title: File.basename(event_folder)))

  # Iterate through files in the event folder
  Dir.glob(event_folder.join('*.{jpg,mp4}')).each do |file_path|
    # Determine the file type based on the extension
    file_extension = File.extname(file_path).downcase

    # Attach the file to the PastEvent record based on the file type
    if file_extension == '.jpg'
      past_event.photos.attach(io: File.open(file_path), filename: File.basename(file_path))
    elsif file_extension == '.mp4'
      past_event.videos.attach(io: File.open(file_path), filename: File.basename(file_path))
    end
  end
end

Session.create(
  title: 'Session 1',
  description: 'Description for Session 1',
  genre: 'Electronic',
  duration: '1:30:00',
  artist: 'Artist Name',
  soundcloud_embed_code: '<iframe width="100%" height="20" scrolling="no" frameborder="no" allow="autoplay" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1609408206&color=%23ff5500&inverse=false&auto_play=false&show_user=true"></iframe><div style="font-size: 10px; color: #cccccc;line-break: anywhere;word-break: normal;overflow: hidden;white-space: nowrap;text-overflow: ellipsis; font-family: Interstate,Lucida Grande,Lucida Sans Unicode,Lucida Sans,Garuda,Verdana,Tahoma,sans-serif;font-weight: 100;"><a href="https://soundcloud.com/groove-core" title="GROOVE CORE" target="_blank" style="color: #cccccc; text-decoration: none;">GROOVE CORE</a> · <a href="https://soundcloud.com/groove-core/bunkersession2" title="Tomas B2B Just Seba at GROOVE CORE Bunker Session 2" target="_blank" style="color: #cccccc; text-decoration: none;">Tomas B2B Just Seba at GROOVE CORE Bunker Session 2</a></div>'
)

Showcase.create(
  title: 'Showcase 1',
  description: 'Description for Showcase 1',
  location: 'Location 3',
  location_link: 'Link to Location',
  dj_lineup: 'DJ 1, DJ 2'
)
