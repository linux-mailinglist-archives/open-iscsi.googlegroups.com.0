Return-Path: <open-iscsi+bncBDUNBGN3R4KRBEWNRGYAMGQE5HQU66Q@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wm1-x338.google.com (mail-wm1-x338.google.com [IPv6:2a00:1450:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 74B7688BA33
	for <lists+open-iscsi@lfdr.de>; Tue, 26 Mar 2024 07:09:25 +0100 (CET)
Received: by mail-wm1-x338.google.com with SMTP id 5b1f17b1804b1-41482ca91b9sf10283375e9.2
        for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 23:09:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711433365; cv=pass;
        d=google.com; s=arc-20160816;
        b=dkXPzospVUmwJ9mxSHQ5yZLeW6M3kbyJ5tNSkC/2Bu51ML3WGrLRIcBk9yoZ63A5DF
         LrKrpNI0ll5okMLQK8u5/XehnlDIUNy3cEo5faoL9jVLDN5qPzoYGuWw8jW6TZKIYyoz
         OL0n8LxvUp0dibJpZKM1DVc/ykU/jg7zxd3uWCqJt0MiGuRlW8XO6JbWdenLrw4QvAAw
         GbRZHf7c+pKNieLceAFgC8+ICfEleVTwMjMUHYX0ot9XchHypLB9d049UljH4xzpeW8V
         qQQSNTyASDm18/uPn63FqfA3QN8tUUjHCu8vH4Z4InwXWWVCcyuTDi/V1a9f6AVuyACj
         TJEg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=NTsZE76wt3BhrrMqh9GWEe34fnkgB80dCCRmOesxXqs=;
        fh=IPJm7zvEWGCI3KiIA+nfwrQRiZcNelCuL8N1H/IO6X8=;
        b=kea2HRYv95zttCm7Uf3YD0eGNAEkXDO5ZuZneWMEQ8ngdZO08KzGfLM68AYcFSjken
         /dm9uA7j98pSCzyvpBfkz0T6o/IIrHzAkmdqsMiN4kgWswUEHo2YTrrmspDmGE6gBYPU
         ptQiQud/xa4vYVzuPrJA2DNZsf6djYXFfPwsukmcHNqCKOVgvVR/vs07JOg2AVISEA/B
         Ln5YDsAYba/Y38827qfGvdPXIbbXYvnILgdKzU4NzM1efFBVa5LgFjv3iYUN8ohNX7Z1
         WX/Fq7FgvW42QrCWDee8I5qzu/620Vjfg/uazGFGFohBlnA3Ir+Ql0hmBH1eSXQD2R7t
         XgOg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1711433365; x=1712038165; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:user-agent:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NTsZE76wt3BhrrMqh9GWEe34fnkgB80dCCRmOesxXqs=;
        b=nXoGL4tgdLHJKxSW+E3QRQ6uD5IiFyL9tQXVjUv1UZTqudKZDadJc5jCrOdgn+0H9q
         4MwhP5qw0zhtql9QsF+m47DMVXAnGoONF69erBa6ULv+/+t/LlSlk6UWWlgbbbepmzDd
         ygqQN/m7YeUmzhh9jRmNpESV3FOQEEB7+FY03lgJJMaXy4FZgA9vHs0i8ZqU4J9dOmWB
         637C6cNc6srCxGn24NG8UeCdz5skr8T+cFDxgJ0wrdZ2XirIYA3PrkMDm/YaFz82WJsg
         F9lYROlN+3A3HBkdFQcMMkouWtgkbJENiY1OyDOqVxtqhhSE4r8MotM5vRFcfi//SSyB
         caLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711433365; x=1712038165;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:user-agent
         :in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-beenthere:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=NTsZE76wt3BhrrMqh9GWEe34fnkgB80dCCRmOesxXqs=;
        b=DW0HkcgKWHh37YeaJGLrHq7lrdIQ//nxZlJJvIIXQbD4q/4xfjNVF6Y8+Bg4yyD1Lt
         Nq86K2qqfnYmmDUewFm1bhvYQyormVk7aTr1lhW14cXoWqchHtiU1q0VYnRfDtvb/dfK
         xoY/FA2mamQX+nnyTbP1WCeZNEwoDuMjq45UQqGGyVWxhH4VDSNx4B3gPhmNzKnDmJQR
         T17deLPcSEHfldmdTAJf0vYTf1Mkiwfz1ngBPe+4j+llWI6nfgN40snbDR/NUHUlKsEc
         Ajth44t8iDYj4RWyu05e9GkfkP2GH/6zyLD2Avl32JOkIX+kte9mmCwiQlh0L//7ek2y
         Wg0Q==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCWDciJlgWt6kHAraoLg3baa40OogXGqTplgVpIxZ9ItHt7IBS4c7sZpWN6selJOduHBU0bnX0TExSK2psc6kDid3VwAWDpz4eo=
X-Gm-Message-State: AOJu0YyU2eZyi1oOFRICdzGNywll2VQ37Uw3J8XPnFJmWpNaZkw4VqNs
	sMz1XCCQ9CYp4QW7T5p2VRLPPHUZgk0VPP1i7SubIjtdVOhPmx6B
X-Google-Smtp-Source: AGHT+IFyPM3kMa0pQluw2zqQmZ9HbPSg043UgB2dgy6LKnCipPyUZOBQgzEuzYnzSQIRSrxmZjgKIg==
X-Received: by 2002:a05:600c:3c94:b0:414:868d:1cbe with SMTP id bg20-20020a05600c3c9400b00414868d1cbemr5307603wmb.9.1711433364325;
        Mon, 25 Mar 2024 23:09:24 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6000:c0b:b0:33e:7617:80cb with SMTP id
 dn11-20020a0560000c0b00b0033e761780cbls2385661wrb.0.-pod-prod-07-eu; Mon, 25
 Mar 2024 23:09:20 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUN6NrAZkVyhUBYPdo4W5OwXYxkf7elw4YD8xxCJ0Vm67Dej2S3BdCOTTZPz2G/UF/rfWVkcp+oHS2mPaVoE5P7T4s/gTbXoF6FpfU=
X-Received: by 2002:a05:6000:4025:b0:341:c9b8:fbde with SMTP id cp37-20020a056000402500b00341c9b8fbdemr5400944wrb.31.1711433360430;
        Mon, 25 Mar 2024 23:09:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711433360; cv=none;
        d=google.com; s=arc-20160816;
        b=II7k47oQPaoJQYy4Y8lQB1B5tcvzutRU0f7eg+eiMBaKiJjYiZ0vvv7uwwk3RLevyP
         l1SGM0AZ4i7fluwSfTCNtxNwkkMCbSZ3BlhSCaPds1WRR34kuk5MSDdOUlswDYseD8gf
         D7KGfb6qZtyarMFKlIuw8hek0+ojuDg5kq/DYZhq4wHKETE0GWVTyhNJgZjRGOs2BrTO
         W9P2FGtH/skTUrShrBvFN5f5AyuJN5ErCicI4aUlfLKgcdzchzxZc3bqWiftd/dfg7pX
         aCgIYGvrx+9ySDNmAp9OYPQI1JOl/uO5M3FGfv4oMG45fJ13O4l95EoVHoNYj8XgviSh
         xj4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=6iZdGMNekVsbh18zlMJr1sZIzntIR3TZKus3OHqgoI0=;
        fh=rGclfsX6IVvLNBcVa+osytPbgqjudZGOzaQywEyEf3Y=;
        b=auqa833JtvmPUp2ljyMwQhNs+KeQmFg4swqmQVh7/SW/LM7A+CviqZHr2/7MrsPjkp
         zdpCX/zVjt6wA1hvRA/wNvKIl/W1hQF70k7qzRXKtPgcZSwTGOJtF7vg7qeeJ+4q/h4h
         RbIz/L2p6OW8vv3lTDdcy/Sa3AIpmrZKdkcNIVJJg58D2mFHgAnKqAjk8AZRJYRU56JP
         O9SwRYVO5OgIWugpsogQ7mfeBbussx73LViL41nxzs+GBnW1aTP198fgOwB7MlmVS7ze
         MqN95hFUPWDWN1VCEGtmtbT44k0i/iuFvEaVu08owobzp6PAF7cVyV8wLLiDfFtOmcqS
         1hWw==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from verein.lst.de (verein.lst.de. [213.95.11.211])
        by gmr-mx.google.com with ESMTPS id e14-20020a056000178e00b00341cf5eab22si93841wrg.2.2024.03.25.23.09.20
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Mar 2024 23:09:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by verein.lst.de (Postfix, from userid 2407)
	id A28C568D42; Tue, 26 Mar 2024 07:09:17 +0100 (CET)
Date: Tue, 26 Mar 2024 07:09:17 +0100
From: Christoph Hellwig <hch@lst.de>
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Niklas Cassel <cassel@kernel.org>,
	Takashi Sakamoto <o-takashi@sakamocchi.jp>,
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
Subject: Re: [PATCH 06/23] scsi: add a no_highmem flag to struct Scsi_Host
Message-ID: <20240326060917.GC7108@lst.de>
References: <20240324235448.2039074-1-hch@lst.de> <20240324235448.2039074-7-hch@lst.de> <80162a6e-12d1-4fd4-ac74-dc5388853323@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <80162a6e-12d1-4fd4-ac74-dc5388853323@kernel.org>
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

On Mon, Mar 25, 2024 at 04:26:55PM +0900, Damien Le Moal wrote:
> On 3/25/24 08:54, Christoph Hellwig wrote:
> > While we really should be killing the block layer bounce buffering ASAP,
> > I even more urgently need to stop the drivers to fiddle with the limits
> > from ->slave_configure.  Add a no_highmem flag to the Scsi_Host to
> > centralize this setting and switch the remaining four drivers that use
> > block layer bounce buffering to it.
> > 
> > Signed-off-by: Christoph Hellwig <hch@lst.de>
> 
> The USB hunks could probably be moved to their own patch following this one ?

Seems like a bit too much churn to me.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20240326060917.GC7108%40lst.de.
