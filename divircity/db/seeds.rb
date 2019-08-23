# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Community.create(profile_image: nil, name: 'Test Community', description: 'Test Description', privacy_type: 0, viewed_by: [1,2], tags: [1,2], features: [1,2], admins: [1], members: [1,2,3], location: nil, beacon: nil, creator: 1, ambassadors: [1], current_events: [1,2], past_events: [1,2], feed: posts, category: 1, address: '123 South St,Pawnee, Indiana', allow_member_post_to_feed: true, allow_member_post_to_events: true)
Community.create(profile_image: nil, name: 'Test Community 2', description: 'Test Description', privacy_type: 0, viewed_by: [], tags: [], features: [], admins: [], members: [], location: nil, beacon: nil, creator: 1, ambassadors: [1], current_events: [1,2], past_events: [], feed: posts, category: 0, address: '654 North St, Pawnee, Indiana', allow_member_post_to_feed: false, allow_member_post_to_events: false)
