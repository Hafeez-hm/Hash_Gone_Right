ROOT = Protocols
LIB_SET ?= current
LIB_ROOT = libs/$(LIB_SET)

ifdef ike
  FOLDER = NDSS_ikeV2_HF_EC
endif

ifdef ike_s
  FOLDER = simplified_ikeV2_HF_EC
endif

ifdef sigma
  FOLDER = sigma_HF_EC
endif

ifdef universal
  FOLDER = Universal_Protocol_Test
endif

ifdef protosuite
  FOLDER = Protocol_Models_Adapted
endif

ifdef col
  EXT=collision
	LIB=-lib $(LIB_ROOT)/hash_no_collision.pvl -lib $(LIB_ROOT)/hash_collision.pvl
else
EXT=no_collision
ifdef assoc
	LIB=-lib $(LIB_ROOT)/assoc_no_collision.pvl
else
	LIB=-lib $(LIB_ROOT)/hash_no_collision.pvl
endif
endif

all:
	@if [ "$(FOLDER)" = "Protocol_Models_Adapted" ]; then \
	  if [ -z "$(MODEL)" ]; then \
	    echo "Error: set MODEL=<file.pv> when using protosuite=1"; \
	    exit 1; \
	  fi; \
	  proverif $(LIB) -lib $(LIB_ROOT)/isCol.pvl $(ROOT)/$(FOLDER)/$(MODEL); \
	elif [ "$(FOLDER)" = "Universal_Protocol_Test" ]; then \
	  proverif $(LIB) -lib $(LIB_ROOT)/isCol.pvl $(ROOT)/$(FOLDER)/universal_protocol.pv; \
	else \
	  proverif $(LIB) -lib $(LIB_ROOT)/isCol.pvl -lib $(ROOT)/$(FOLDER)/$(FOLDER)_declaration.pvl $(ROOT)/$(FOLDER)/$(FOLDER)_$(EXT).pv; \
	fi
