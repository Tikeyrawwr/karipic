class MatchesController < ApplicationController
    def create
        @publication = Publication.find(params[:comentario][:publication_id])
        @match = Matches.new(match_params)
        @match.user = current_user
        respond_to do |format|
            if @match.save
                format.html { redirect_to publication_path(@publication.id), notice:'Comment was successfully created.' }
            else
                format.html { redirect_to publication_path(@publication.id), notice:'Comment was not created.' }
            end
        end
            
        
        private
        
        def match_params
            params.require(:match).permit(:comentario, :publication_id)
        end
    end
end
