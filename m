Return-Path: <open-iscsi+bncBDUNBGN3R4KRB3X2QKYAMGQEQ4APYGY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EE6D8882B7
	for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 00:55:29 +0100 (CET)
Received: by mail-oi1-x238.google.com with SMTP id 5614622812f47-3c3bfd7fd36sf2153918b6e.1
        for <lists+open-iscsi@lfdr.de>; Sun, 24 Mar 2024 16:55:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711324528; cv=pass;
        d=google.com; s=arc-20160816;
        b=A7kDQQsLdE8gB9oLKrKw069cHCtkiTLH3sBiroEnde4RA4/jMmKMspG+FP1OHS+H8Q
         IlO3QD7WvFG6pSPZ+lS4hRKMYJolzv2TCZ5i26joYQI+jCfz9HenWql18acGkj7x311A
         Pdiy28Q7EvCmPlUrHKNGSjvdTvq1Bkq6oKe+R0RcSp99VIVnd3AXq1gzm1o2WMbGX8N6
         O/RYK9C/HkLl0kChB6iI0al9CiDMiEO7YiepVFHoI77YP96bLliTUuTbHqC+WOcPuss1
         YXwQw/HSGtMqbPjHeH+0NElclR1TBqZEvc6rUI6PseKnmgvBa1ZAFWNf3tzfQIP0e8Lo
         Mx+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=U1f1EgFf1sdNz5vHDFU/r87KAA9ggB76x6BMBK5UeXs=;
        fh=/MSXarnI8Wa7xpgoLZXpB/UDbVP+0jL93C21GZ5X9HA=;
        b=jB0I8aOfao9JJPgTWaP1vHdUW9RTZXtjvumQKcHrSrf3CpgtlmH/Gpp8+O46qcB74g
         +IlWti7N9NvIB3unAdfs9pHS/LWNhpdd9zsV6VX6M4rR+Grp/PtrXI2rOSEQNVD4VUPJ
         3LrnK59GKUZhMAiYq9Cl3rUOURKWBioKpuCAIFSgK9H0GFK7W3h4MRg0QFKO9WaxM9+Z
         XvZOfI+EYTVLdnA7/d48XBKbloG1r+3aUeXK9XdEwF90xg8aIU4WScAjINtHRUNpWcYF
         qBxLiTVpSM3jKU+WBupHEYjWh0h1unqFZp8GKkCnRQqn346vmiAwJ0RzjIpQc1Vt60CT
         5tgQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=iFGmw5+9;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1711324528; x=1711929328; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=U1f1EgFf1sdNz5vHDFU/r87KAA9ggB76x6BMBK5UeXs=;
        b=poFwCrzuYKCtzSkm490hW09JJt2bLY9D6u+QFx2LgxeVcDsJZieCu/hOTL/5LvsTrN
         1QvLBMJGEKrUywCsEUNSpNIO4mCSzzmost488xcv/p9Z03Ca/h0DwokVZlo4Et74YWPN
         mFTngqi1JKQt3OjFlcyAMr2BMSBLw/wmVgOvQ3AZbreXBhmGiXRQD0BShBigseY3o2SX
         0/NiNt3vDDkk1ezDM2hQbYmHpQKOBXpQz072CmSO3WYj4C25Q8RC7zuywe4vngRaA+rl
         1j1X8DNBb4hIerwsCgk6q11gTSUeks/FMVdwlHO5U0IRkUkqm4spieCnCdymumxjDSal
         vjCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711324528; x=1711929328;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=U1f1EgFf1sdNz5vHDFU/r87KAA9ggB76x6BMBK5UeXs=;
        b=qmlMvWNa0eE/Q9vrDISsRNHnDBNWd/XxCY9J4Ey3IDwISr4aPc8N2DyR3gs1mEftvn
         jc6vJAzFFoQOVJmsov7y+75aZks1YVfl4LmI1+XXJKx1m6Ncv3ewWXP7MyRQw6kE3Fk1
         K07u6wqeriaywQ+RjkWbWpyRpVRpd97130drt7L5QlaRylk3i8f9E6Ti/YhIqIAe2p/x
         SP0JQV/5Sla2RLkh0zb6kRUaW2nxhvb5g1kIoVj1Z23BIdF4Hac/3OtoBbsBS6eu/hoj
         uMY995mRAkWXMB19orbYCsGJPYxRqHY9sS4PHmV84LnoPxbpbtfZMZ17yTFf+787lbuY
         Rm+w==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCXxdOt0Xyuh9ChDSYLoEz70gfUn58txIuQQt+4IkRTt8+3kcXJlmGDpJUuIUeLgIgv5jCKK6vEBNYlkDStQGeJdlcNYnX9tlEE=
X-Gm-Message-State: AOJu0YxfC0Mcp6duPJk4SjW+tITr73rqbRQaE/d8gc4xuL6DORUeNCLF
	Zdv+pFewjIZ49kjgkbsazdb/jU4YrhJHMLbhXmKViatVVlV62ELA
X-Google-Smtp-Source: AGHT+IGBGXFsYvMaRDotnDPra7YpRBJuOjDirn2iT9xA0rpctuVMn/1ek39kNDmG9Drma4PcP00anw==
X-Received: by 2002:a05:6808:14cb:b0:3c3:bdf6:b951 with SMTP id f11-20020a05680814cb00b003c3bdf6b951mr6892690oiw.12.1711324528071;
        Sun, 24 Mar 2024 16:55:28 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:622a:2d4:b0:430:8d9e:5847 with SMTP id
 a20-20020a05622a02d400b004308d9e5847ls4999053qtx.0.-pod-prod-03-us; Sun, 24
 Mar 2024 16:55:25 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUxgS98qiJhFPczq1eOIIV3iRzurIOzF3sGOV8BjXuVXZLwiMKXY5B6jmwzvzaAD0JjvNXWVHj5iea7V4pMkaJyHIJt/vAWynyEPwI=
X-Received: by 2002:a05:620a:51d2:b0:789:e5b6:824f with SMTP id cx18-20020a05620a51d200b00789e5b6824fmr6048601qkb.53.1711324525613;
        Sun, 24 Mar 2024 16:55:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711324525; cv=none;
        d=google.com; s=arc-20160816;
        b=MSKGGxavz3JqNo6OVHjHhUXXwgDSjoy2G9wB4/lepkQ8VSt3DHSbFasv9P9iHdjScy
         FXn/wdfHOvLefwgyIAz7OOi/Y1T4Wy2k09owEtmnsjwVfgl8VGBdMgV/1H1suMpN+Uwu
         3WdZsh02XCjgGj4wmbNy8kYugRJvjD2UU+nFwBrfRGFXAxsJCavv7pxxkwf4T5V8JnTB
         C3brZ80OS/MLFAT/kGIxSmT6Eu8t81Da6VrZn9bwIRTdcp6+VaCp3B4Dti88AYKL72BV
         pkQnD4szgtaokwp5rxdZl115Zca5Sf13yTOAf71ynEbw/ffl25OjzOX6AYi/Y7+dqYmK
         5L9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=eHfDKYBKDOSF5nkhxH0HKhVm+4o+I6CDGNU5dThwXeo=;
        fh=t86CCijjmN/1ilkIT+VdM3oaZOxEhtNXSf8+ryhWOUU=;
        b=u9SmT9XMAE27RYhZoLIGtgCpGgVToY0t7d+RmhttIXZoFnZrYuWiXP8NghpKKvPNvO
         piCxt29JGXSbj9M6LpmbNP104OtO3tnK/ex75v5aw7LKgtyOV1ZFQfSfsZ5sAgT7eLZW
         NTnwpIudIzjFN0n2K0rJzPLEwC3hRZgE6omj27Ci7J00+S1tdJC86HyBgmWi0Rv4tuXZ
         Acdi8mcSC3yejTNJgLaVcwQO4nbVQHXcpoNR0+HCAXlNPz8u5NDRb2BRbNu77nPhRou0
         biPaZ9NEt8YMJwuIaYeMDgYM6xo/sqXHR+m83+TM9BGmrYqcWg8lumdyBYZOtvUR+jn6
         XZ7g==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=iFGmw5+9;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by gmr-mx.google.com with ESMTPS id h16-20020a05620a21d000b00789f94f2f61si253051qka.4.2024.03.24.16.55.25
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Mar 2024 16:55:25 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [210.13.83.2] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roXfu-0000000DzJc-2rva;
	Sun, 24 Mar 2024 23:54:51 +0000
From: Christoph Hellwig <hch@lst.de>
To: Jens Axboe <axboe@kernel.dk>,
	"Martin K. Petersen" <martin.petersen@oracle.com>
Cc: Damien Le Moal <dlemoal@kernel.org>,
	Niklas Cassel <cassel@kernel.org>,
	Takashi Sakamoto <o-takashi@sakamocchi.jp>,
	Sathya Prakash <sathya.prakash@broadcom.com>,
	Sreekanth Reddy <sreekanth.reddy@broadcom.com>,
	Suganath Prabu Subramani <suganath-prabu.subramani@broadcom.com>,
	"Juergen E. Fischer" <fischer@norbit.de>,
	Xiang Chen <chenxiang66@hisilicon.com>,
	HighPoint Linux Team <linux@highpoint-tech.com>,
	Tyrel Datwyler <tyreld@linux.ibm.com>,
	Brian King <brking@us.ibm.com>,
	Lee Duncan <lduncan@suse.com>,
	Chris Leech <cleech@redhat.com>,
	Mike Christie <michael.christie@oracle.com>,
	John Garry <john.g.garry@oracle.com>,
	Jason Yan <yanaijie@huawei.com>,
	Kashyap Desai <kashyap.desai@broadcom.com>,
	Sumit Saxena <sumit.saxena@broadcom.com>,
	Shivasharan S <shivasharan.srikanteshwara@broadcom.com>,
	Chandrakanth patil <chandrakanth.patil@broadcom.com>,
	Jack Wang <jinpu.wang@cloud.ionos.com>,
	Nilesh Javali <njavali@marvell.com>,
	GR-QLogic-Storage-Upstream@marvell.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Alan Stern <stern@rowland.harvard.edu>,
	linux-block@vger.kernel.org,
	linux-ide@vger.kernel.org,
	linux1394-devel@lists.sourceforge.net,
	MPT-FusionLinux.pdl@broadcom.com,
	linux-scsi@vger.kernel.org,
	open-iscsi@googlegroups.com,
	megaraidlinux.pdl@broadcom.com,
	mpi3mr-linuxdrv.pdl@broadcom.com,
	linux-samsung-soc@vger.kernel.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: convert SCSI to atomic queue limits, part 1
Date: Mon, 25 Mar 2024 07:54:25 +0800
Message-Id: <20240324235448.2039074-1-hch@lst.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=iFGmw5+9;
       spf=none (google.com: bombadil.srs.infradead.org does not designate
 permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
Reply-To: open-iscsi@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Spam-Checked-In-Group: open-iscsi@googlegroups.com
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

Hi all,

this series converts the SCSI midlayer and LLDDs to use atomic queue limits
API.  It is pretty straight forward, except for the mpt3mr driver which
does really weird and probably already broken things by setting limits
from unlocked device iteration callsbacks.

The first patch is actually a bug fix and should probably go into 6.9-rc.
The other would probably best be in a shared branch between the block and
scsi code, as the ULD drivers will be a lot more extensive.  I'm actually
scratching my head on dealing with some of the updates that it does from
the I/O completion handler and ->open calls for already open devices.
Suggestions welcome..

Diffstat:
 block/blk-settings.c                        |  248 ----------------------------
 block/bsg-lib.c                             |    6 
 drivers/ata/ahci.h                          |    2 
 drivers/ata/libata-sata.c                   |   10 -
 drivers/ata/libata-scsi.c                   |   19 +-
 drivers/ata/libata.h                        |    3 
 drivers/ata/pata_macio.c                    |   11 -
 drivers/ata/sata_mv.c                       |    2 
 drivers/ata/sata_nv.c                       |   24 +-
 drivers/ata/sata_sil24.c                    |    2 
 drivers/firewire/sbp2.c                     |   13 -
 drivers/message/fusion/mptfc.c              |    1 
 drivers/message/fusion/mptsas.c             |    1 
 drivers/message/fusion/mptscsih.c           |    2 
 drivers/message/fusion/mptspi.c             |    1 
 drivers/s390/block/dasd_eckd.c              |    6 
 drivers/scsi/aha152x.c                      |    8 
 drivers/scsi/aic94xx/aic94xx_init.c         |    2 
 drivers/scsi/hisi_sas/hisi_sas.h            |    3 
 drivers/scsi/hisi_sas/hisi_sas_main.c       |    7 
 drivers/scsi/hisi_sas/hisi_sas_v1_hw.c      |    2 
 drivers/scsi/hisi_sas/hisi_sas_v2_hw.c      |    2 
 drivers/scsi/hisi_sas/hisi_sas_v3_hw.c      |    7 
 drivers/scsi/hosts.c                        |    6 
 drivers/scsi/hptiop.c                       |    8 
 drivers/scsi/ibmvscsi/ibmvfc.c              |    5 
 drivers/scsi/imm.c                          |   12 -
 drivers/scsi/ipr.c                          |   10 -
 drivers/scsi/isci/init.c                    |    2 
 drivers/scsi/iscsi_tcp.c                    |    2 
 drivers/scsi/libsas/sas_scsi_host.c         |    7 
 drivers/scsi/megaraid/megaraid_sas.h        |    2 
 drivers/scsi/megaraid/megaraid_sas_base.c   |   29 +--
 drivers/scsi/megaraid/megaraid_sas_fusion.c |    3 
 drivers/scsi/mpi3mr/mpi3mr.h                |    1 
 drivers/scsi/mpi3mr/mpi3mr_app.c            |   12 -
 drivers/scsi/mpi3mr/mpi3mr_os.c             |   76 +++-----
 drivers/scsi/mpt3sas/mpt3sas_scsih.c        |   18 --
 drivers/scsi/mvsas/mv_init.c                |    2 
 drivers/scsi/pm8001/pm8001_init.c           |    2 
 drivers/scsi/pmcraid.c                      |   11 -
 drivers/scsi/ppa.c                          |    8 
 drivers/scsi/qla2xxx/qla_os.c               |    6 
 drivers/scsi/scsi_lib.c                     |   40 +---
 drivers/scsi/scsi_scan.c                    |   79 ++++----
 drivers/scsi/scsi_transport_fc.c            |   15 +
 drivers/scsi/scsi_transport_iscsi.c         |    6 
 drivers/scsi/scsi_transport_sas.c           |    4 
 drivers/staging/rts5208/rtsx.c              |   24 +-
 drivers/ufs/core/ufs_bsg.c                  |    3 
 drivers/ufs/core/ufshcd.c                   |    3 
 drivers/ufs/host/ufs-exynos.c               |    8 
 drivers/usb/image/microtek.c                |    8 
 drivers/usb/storage/scsiglue.c              |   57 ++----
 drivers/usb/storage/uas.c                   |   29 +--
 drivers/usb/storage/usb.c                   |   10 +
 include/linux/blkdev.h                      |   13 -
 include/linux/bsg-lib.h                     |    3 
 include/linux/libata.h                      |   10 -
 include/linux/mmc/host.h                    |    4 
 include/scsi/libsas.h                       |    3 
 include/scsi/scsi_host.h                    |    9 +
 include/scsi/scsi_transport.h               |    2 
 include/scsi/scsi_transport_fc.h            |    1 
 include/ufs/ufshcd.h                        |    1 
 65 files changed, 335 insertions(+), 601 deletions(-)

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20240324235448.2039074-1-hch%40lst.de.
