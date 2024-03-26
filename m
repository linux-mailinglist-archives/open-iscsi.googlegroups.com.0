Return-Path: <open-iscsi+bncBDUNBGN3R4KRBQGBROYAMGQES5SURWI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id ADBF888C5C4
	for <lists+open-iscsi@lfdr.de>; Tue, 26 Mar 2024 15:50:43 +0100 (CET)
Received: by mail-lj1-x23b.google.com with SMTP id 38308e7fff4ca-2d48b182917sf57847861fa.1
        for <lists+open-iscsi@lfdr.de>; Tue, 26 Mar 2024 07:50:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711464643; cv=pass;
        d=google.com; s=arc-20160816;
        b=CRXHar7HZLzJLEbbfppGUoSk2V/rl4+W1zJFm8kN810+oSWuSZUwikN0b4QN9MTzB1
         N6SVo+qdUtV+Ah6AA71ij/+ywqEQFqv+GBmKmlOvxk8c6iK0G3Rj5hjF1NxqDK8hb0Y4
         Tkwe6pbKG79R3FrGZ89eTOA+9dmIIJZiVrDpYw3YIvyj0sePMNCgqydxIGQdTTHpMTpz
         XQ0r9ybYdEBn8DFqyB/5fPWAdjQZHb8s+bDZQZxXvlFUoGN9WkTvxrlwIAeENI6XRWlQ
         XG/JC3JiObea6EII6yQ5vSpayEdzGcjmHYEPZZNlSWzJeRc5z2HnGAbs9CUj+nrv42fL
         +QOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:to
         :from:date:sender:dkim-signature;
        bh=hrQRaEPmcR/XKU+CqQQUZYUI8BSO7KwWxWGgTAO/CtM=;
        fh=pazHHhncVY0jjBzdvO6IujCCOEr4TOu4kjR5xBaKAmM=;
        b=f8+t0fSXH3k5G7vJlY3d1Vadw8acBF2ftASIhHQXNRKOC+r62/YXgIU/BRNHcE69xw
         BThXZ86uO3kN6V3RChZvJDkFR8DoQuE6BaNrVFUrSPNwWKjrQINnK/TaUOAPLGBvVvmJ
         UadcGnf+s494JmDGRyj03I5tkkCaONdkdpUXK66icO1QYATePsHO2ED604JJmh3Y+Ouz
         kajcBDAPiR/w+QV0SpkQ54dLOBMMO+Oaz87OpMW2+tmtMrlkH409IJ6TjgYuEN2odm5i
         NmX6qZLOulXOlmwtOrAKNFEFwf1tjVXnh49grBVJ6h3DTrUgguT6Wj3HTOaqyC/zRm2e
         tr4Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1711464643; x=1712069443; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:user-agent:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:to:from:date:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=hrQRaEPmcR/XKU+CqQQUZYUI8BSO7KwWxWGgTAO/CtM=;
        b=eQF+YsDmVVsnsGV95joyMn+5y7v68HJC103HrH1ffhKbLmp5ziuuOghvbZ9s+o3iHh
         BkBxhek8Z+J8Nl6nU0glge31IoQpw8qrVsZFoL15kSQRQIIiEqVpo8ceYAsYBfF8h9Ae
         hzy/JT49JfBNrmxHj13q9cEqsIsOz9ez9cklq6ia0DEh6qHOWujRMsaNiQ6Fx6Vhvm2q
         nCHBps2ighpu/4YrwkBqicsT4ZCrNV5BzEzMK4Hn8SnbK3eQ9SH6qMqsW9JHmP23/YTw
         pUCfLwr73V7BVbSrd8LL+uubwKCHp3ZJEc4LmuHhwoNWMrYoP417ITbhJ5fzysDIJ2bG
         aCzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711464643; x=1712069443;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:user-agent
         :in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-beenthere:x-gm-message-state:sender:from:to
         :cc:subject:date:message-id:reply-to;
        bh=hrQRaEPmcR/XKU+CqQQUZYUI8BSO7KwWxWGgTAO/CtM=;
        b=nxtjnufhyxvHkgBjtHz+8Hfo4S+TM2Ok+BwqjZMYUm489chXjc3QTuDviuvUC9KZGK
         WjaQ5YV52dcEshc7QOorDXgPUjEy77ZtkApyerWIH2gyDZlwaseDZ+UQ7EryfMT8hZeB
         WBdvePoAmoRiTS+NMlgATN7iUGMF1njKx2viFu4Fv8sGrC3XCp+IQwy/PAu2MON7ECaL
         P5eZ9cANa+zFrI96//vkllEwsIsNrlgqmNz+CyQxvwAgIPtVfh6R78z7jN8gRP/fWKzn
         7XFS9vluylhGdGlLRXHP1Ydoe09Uqq50nfRc3jV06Yl0R+zHVZDaamglgMhD9BaifQrw
         5lHA==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCWcERsKiGQ6PVV+dJG/C30X7HhMOp0Xr75HnNvhDmdi5JXbITJFwPN9FDKUQfUg2VZ+1hWbXUhQcFcJLL2h2fRhSH76eljUc1o=
X-Gm-Message-State: AOJu0YyHSY8j2KcJCvyESITxtiVaFLbRUDUHWAeTiSUOw8kzRQCT/TSz
	BsCcUwKOjD0SylLpnaSRcxz6JMwMzctS4Vc+UFgyr6sR5BpAaYQu
X-Google-Smtp-Source: AGHT+IFumFmZIPB9I80VhfeuZAJ6kJWFmfBVCbho0ok96uONi6sMXYWg21gESib5GcEKErdVzekxyg==
X-Received: by 2002:a19:4341:0:b0:515:8bb2:72a2 with SMTP id m1-20020a194341000000b005158bb272a2mr1995874lfj.55.1711464641949;
        Tue, 26 Mar 2024 07:50:41 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6512:696:b0:515:b137:ffe0 with SMTP id
 t22-20020a056512069600b00515b137ffe0ls201872lfe.1.-pod-prod-01-eu; Tue, 26
 Mar 2024 07:50:38 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWqX6JZELlm3LOcxN9dXuLasu1hjHYCHa4vi9OTiHXbkk4LCqIqRC/gbF5t76NMCesX4xrp/7HjySLvUJWPRtrOvzMcaPpq/S0yXsc=
X-Received: by 2002:a05:6512:1105:b0:515:b9ee:e814 with SMTP id l5-20020a056512110500b00515b9eee814mr1354135lfg.24.1711464636663;
        Tue, 26 Mar 2024 07:50:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711464636; cv=none;
        d=google.com; s=arc-20160816;
        b=YjWyVeUWMBwzb15H5NLPTCP0Fd3YsES1aF4L1HkBOVRsD5eC8uZmiFT0f6YeoQmRWu
         +WJmLettsfRM3Y+W5NoXKbh75eOMO6sZN1GymiSCLdDPXP/3orQqs/GEyvi9ognx48il
         jr3W/boJSjC0JozP0BrFB5Rc24YpVyMxNFMwYS1qTAsVUx+Qalo092kz/GmZMcAUjFh8
         DPqtHRSgydiEQc0AHBM3f2V68cBBrEFPuPEvJW4uyGd17xel7V7410Cl34h7U4WS8PO5
         Z5Xcj8p1eOMzBu/TkQ8wFMxim7RnwuKo4uJ9e10rCTGEDJzVjenMpLSNJWEsBZhONCug
         0HNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date;
        bh=GlnT1lulvQTDci+Rff74fRpsjZ+fuaHv6r06gygdyTI=;
        fh=8g/qHm2QC7yoSCwSZ5sHYimArVv5rfesyFk22bD+9yY=;
        b=1CUehtT/WmPqsxcavh/tEmgdGJi4NAz+MwyCHhREP3DpqumSGxUSNCcHcaiQxrb+Ia
         OYCxcQGIIrMWSn+2aVLOGqnXvHiC69+2JlRko46z74pxnLU+Ndkn53Rip6sqrI2i20Q4
         uIPM3z4XmG+6rceUXa3MLJ0htOnVb6pS9iME8cNU2mNep5R3tTrzRa4znfMtlfNIbyF5
         q4Ev2ZKsFO8qitLOVY6AQNqVBYriBzy5f3MczUqZ6sSYInawMJGTqh165xXPil/EMqII
         BiVLymF4t284ZECW2ptYRp8nbuYhcJ6FtgdlP4FITabUBB8kYqvtz6Y1wr1IZdnvGnxS
         G2vg==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from verein.lst.de (verein.lst.de. [213.95.11.211])
        by gmr-mx.google.com with ESMTPS id o22-20020a198c16000000b00513c1ff7958si431285lfd.1.2024.03.26.07.50.36
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Mar 2024 07:50:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by verein.lst.de (Postfix, from userid 2407)
	id 848FA68D37; Tue, 26 Mar 2024 15:50:33 +0100 (CET)
Date: Tue, 26 Mar 2024 15:50:33 +0100
From: Christoph Hellwig <hch@lst.de>
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Damien Le Moal <dlemoal@kernel.org>,
	Niklas Cassel <cassel@kernel.org>,
	Sathya Prakash <sathya.prakash@broadcom.com>,
	Sreekanth Reddy <sreekanth.reddy@broadcom.com>,
	Suganath Prabu Subramani <suganath-prabu.subramani@broadcom.com>,
	"Juergen E. Fischer" <fischer@norbit.de>,
	Xiang Chen <chenxiang66@hisilicon.com>,
	HighPoint Linux Team <linux@highpoint-tech.com>,
	Tyrel Datwyler <tyreld@linux.ibm.com>,
	Brian King <brking@us.ibm.com>, Lee Duncan <lduncan@suse.com>,
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
	Alan Stern <stern@rowland.harvard.edu>, linux-block@vger.kernel.org,
	linux-ide@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
	MPT-FusionLinux.pdl@broadcom.com, linux-scsi@vger.kernel.org,
	open-iscsi@googlegroups.com, megaraidlinux.pdl@broadcom.com,
	mpi3mr-linuxdrv.pdl@broadcom.com, linux-samsung-soc@vger.kernel.org,
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Subject: Re: [PATCH 13/23] sbp2: switch to using ->device_configure
Message-ID: <20240326145033.GA22360@lst.de>
References: <20240324235448.2039074-1-hch@lst.de> <20240324235448.2039074-14-hch@lst.de> <20240326093045.GA139274@workstation.local>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20240326093045.GA139274@workstation.local>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted
 sender) smtp.mailfrom=hch@lst.de
Reply-To: open-iscsi@googlegroups.com
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

On Tue, Mar 26, 2024 at 06:30:45PM +0900, Takashi Sakamoto wrote:
> >  drivers/firewire/sbp2.c | 7 ++++---
> >  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> I'm not good at any kind of storage protocol, thus execute me not to
> review it. My concern is which subsystem provides the change to mainline.
> I don't mind it is your subsystem.

The whole series should go in together, probably through the scsi tree.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20240326145033.GA22360%40lst.de.
