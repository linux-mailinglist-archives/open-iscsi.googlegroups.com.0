Return-Path: <open-iscsi+bncBDJNPU5KREFBBN6LQSYAMGQEUXHCJNY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E135889314
	for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 08:20:25 +0100 (CET)
Received: by mail-il1-x13d.google.com with SMTP id e9e14a558f8ab-368185c12d7sf39906805ab.2
        for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 00:20:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711351224; cv=pass;
        d=google.com; s=arc-20160816;
        b=weXty8o6VRjFIMvkb5HvxOQIGqP6zEVkM5Q9hSwYy6BeDe0DUSnm/X5tve1xpFryu+
         FqjxsEV/QdWQASeIyEGgXXCo8BWL69QZO2+9+y1PfNib06rirFFBPS+jN40majaJi5JR
         O17qE8pC3Wmkgy6aJZIWRd+kXk6kGqpRNQnCERi9QL0QQIZf1CI2qgUpiB84qDKe7soO
         ae0zlDgLe2RRROU8p/zjdKUdbHVHNzh0GF1eoL3jPZPVwMsFElpfLQpkNJbBp9hOY+wN
         5cYuc5VkigR+9dsCgbm/BbdUSuF47rwYn5Afxc/vXeyBDUfo7BFFTCBflYRHrgGyvAok
         ef/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:in-reply-to:organization:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=bRKOpjiaHgDXIiv4qv586W7FmgX8FAbmS/jozxDiQWk=;
        fh=qK2APscqstqsmLabaOyExv56fI9zVKN0T/VOqdZ8sFQ=;
        b=Gqn0iDY+AdNfpIKAe2TIqLPWcEVJPgCCdAUvWVIofr3liRAgSi2CV/DERcU0lNZyUL
         4I5kYC0U++u7nP9hYQn/wqqTveQGzr3zqOEq3peLPp0uCmx19YsTLh00FhS+hskj5szf
         E9Qs8ZxO1dgqci6RM90M/xblRb9OcxI1t2NvJmMAWwrzK0cIGtyQPY/FD+74NkN94h2h
         6TopeCo7vdSgwU+yL5KgJq/DwgFLdP8aa686rzuUPl5VyHL0GQixt28B10jBHyXwh6Ds
         VIAxpQ7KfejV6plGzeYfgvaxNxYQt/UiiaxmXBlrTnGDPJPoTNxcHVQwgITuY3R4Ja+Y
         +RGg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=R5g4IRlb;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1711351224; x=1711956024; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=bRKOpjiaHgDXIiv4qv586W7FmgX8FAbmS/jozxDiQWk=;
        b=dF4eHKyrw0WiQNgVfQLq5XpjY99mVY/QEmS76V11t3y09LXciwD8Aaeto/+Ptkpn5r
         LKppO0SvRfaC6gqQ2pWTUmhGn2ZfV3xlhIXGFjZraZp1AbVPhHh2Tt+hUn/hgOy4HasQ
         iDyftN4+feCEZJotRD1EjLv1+Rq0no1ZzNulP/r3HvR6ysPaLJ20Kfc4QnPaVMdSNRhc
         5mNFltZynS0dRpcchprfxvIwQ+nAAZ74R7ff8vwy489mB6naAWO91iSZeFf4avq77WUa
         WUSFDaFSU88FLFiHXSi2kPHAxzxfuKJOyFD7w6PAlTLqP4grhvcJAK2pfnRV9C9rA0Nf
         Ms/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711351224; x=1711956024;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :organization:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bRKOpjiaHgDXIiv4qv586W7FmgX8FAbmS/jozxDiQWk=;
        b=LO2nqPLLylajs6z6qL26Vq5El27B899m5eRBnfdPCJIrTh0D6hJipbytAQcdz9vf6z
         Os3qeHRVoyd2pwTUC0lRHt3OklZcWax2FBYPXFcRfgMmE+DJr8xKGBckFR89NeJpefTL
         uOonPLdE8g/IQhSBzy/DkH41tMF7xv4DfOI3yz/sjxM8yjdbjtpKMew1KhkHMbdraujA
         vfYboHOz1Rr2aqpWVU9Vw9J3dbbW28A/om5N4Vk2vMin47Ys/O5n9IWMno/al54kjpBn
         blNknEgX2T0BhdREmbU9aaVrPtPX7infMYuagzgv9n4tGu6p/Ocg8exNWaNjWVOcLpcT
         FiSw==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCUSOIn8a7255nABN4qzAauWKiPwtvLwSLXCLd3fxIT96BFp5FMY949hy7jbSAA62vS5lLx2uYxogFYjHHRvH1aVv96ej6eTy7A=
X-Gm-Message-State: AOJu0Yx423ZQWrIPfO7IuYXV9qWLFiOVae3e1wA9QuOA+2Hdf6NAiosC
	Pxck0B2Qgfa33fNGjZuTPN6jTGh4RtG0ueLHwhm07ti9EEAF8IkB
X-Google-Smtp-Source: AGHT+IH2zcJEwMAQCOUgFg36EovlJxo9nv03wO0tTH7Ykzd5H6Smp1fOGmWOZGu9mdEyVt8VIFP9Ag==
X-Received: by 2002:a92:cb47:0:b0:366:ad4a:4b80 with SMTP id f7-20020a92cb47000000b00366ad4a4b80mr6427451ilq.3.1711351224330;
        Mon, 25 Mar 2024 00:20:24 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6e02:2166:b0:368:7e0f:199d with SMTP id
 s6-20020a056e02216600b003687e0f199dls1127983ilv.2.-pod-prod-02-us; Mon, 25
 Mar 2024 00:20:22 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWv5PlS06xOW9dSuQ5Or50lZG9CtsSogwSEOYERInmWTICAmrZfcXQJkCSUibxDdLh/ZL+Pvhj0ANy16j5wXTKn2KQS0ExjhdWrxLs=
X-Received: by 2002:a92:dc05:0:b0:368:64cc:d404 with SMTP id t5-20020a92dc05000000b0036864ccd404mr7359758iln.0.1711351222654;
        Mon, 25 Mar 2024 00:20:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711351222; cv=none;
        d=google.com; s=arc-20160816;
        b=gT9z2r3aeN6eZf7fhJEzSNboe7x0pqMWOlSillM3X8YBk3MVDYVVT+/lEyWI+w2rfd
         TYKWeVPsHTf7ZSfB/wohotxgxd35mvuRUr0wTSes/w42A2TxqDPLSbsl9Ypupvj4X0dt
         Cie+dQYFCDwFfizSHwxXkFf8vN+xROjO0WikXuENbcaWZvk2SmEPgebln1bDRpYjkP3t
         AUjzqtMKgU2xGQQPX1VOAF+dBISDx6Sky5a1GpikDZiFtf6LIEYROr5WNc+0kjmgrA6X
         hU/lmCqu6CGBGYJ2aoWBiQvD/6RCn9ANEAcyoZ8QanIPQ1Aq8pCGL20+0YWhw5T2pkKe
         5mYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:dkim-signature;
        bh=/lgGBhtkghTv64e7uD1SNneGxZlpozu8FKoaQFqRTbE=;
        fh=42thyqLuX+U3R/biblipVYna9LUz9grvZASiaIDfzRc=;
        b=hDnat/4V91YT0Hcy2CX65B4PVkvMpkTAp3wNcwwwE3L4a1TETiiyvWKv3FJzu1ETq8
         87qQXMqg+7OA2GaL9UW5inXOFe4do9D7Q6UjbRyZ2pf5i/5lNYwtJW95H+0gtcgymjZd
         0jlTMpGyOB/09I+pMz25y/30EBoZFD/tpDIvx/utF6Ip4jc+KvEZ6/cnSjH+ZoFLsyCS
         FJbJdco8B+DnKG6tlVYZMWPagXY8Rz651eUBx4NAUPApgJ/sF5Z5FB4DfZPu9E/h9hcw
         wrCPpeBI4ucM4fz8yU1BHc7J66FtYqGZZDWLD5h5KnSC8v5lWJ5nI8v1czt+B39RDwT8
         sEQQ==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=R5g4IRlb;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by gmr-mx.google.com with ESMTPS id c2-20020a056e020cc200b0036508ac8c22si482385ilj.5.2024.03.25.00.20.22
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 00:20:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 4148C60DF2;
	Mon, 25 Mar 2024 07:20:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 25E96C433F1;
	Mon, 25 Mar 2024 07:20:14 +0000 (UTC)
Message-ID: <be1655f7-3ae0-4a5a-ac35-95e9c7d2da02@kernel.org>
Date: Mon, 25 Mar 2024 16:20:13 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 04/23] scsi: initialize scsi midlayer limits before
 allocating the queue
Content-Language: en-US
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>,
 "Martin K. Petersen" <martin.petersen@oracle.com>
Cc: Niklas Cassel <cassel@kernel.org>,
 Takashi Sakamoto <o-takashi@sakamocchi.jp>,
 Sathya Prakash <sathya.prakash@broadcom.com>,
 Sreekanth Reddy <sreekanth.reddy@broadcom.com>,
 Suganath Prabu Subramani <suganath-prabu.subramani@broadcom.com>,
 "Juergen E. Fischer" <fischer@norbit.de>,
 Xiang Chen <chenxiang66@hisilicon.com>,
 HighPoint Linux Team <linux@highpoint-tech.com>,
 Tyrel Datwyler <tyreld@linux.ibm.com>, Brian King <brking@us.ibm.com>,
 Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
 Mike Christie <michael.christie@oracle.com>,
 John Garry <john.g.garry@oracle.com>, Jason Yan <yanaijie@huawei.com>,
 Kashyap Desai <kashyap.desai@broadcom.com>,
 Sumit Saxena <sumit.saxena@broadcom.com>,
 Shivasharan S <shivasharan.srikanteshwara@broadcom.com>,
 Chandrakanth patil <chandrakanth.patil@broadcom.com>,
 Jack Wang <jinpu.wang@cloud.ionos.com>, Nilesh Javali <njavali@marvell.com>,
 GR-QLogic-Storage-Upstream@marvell.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
 Bart Van Assche <bvanassche@acm.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Alan Stern <stern@rowland.harvard.edu>, linux-block@vger.kernel.org,
 linux-ide@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 MPT-FusionLinux.pdl@broadcom.com, linux-scsi@vger.kernel.org,
 open-iscsi@googlegroups.com, megaraidlinux.pdl@broadcom.com,
 mpi3mr-linuxdrv.pdl@broadcom.com, linux-samsung-soc@vger.kernel.org,
 linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
References: <20240324235448.2039074-1-hch@lst.de>
 <20240324235448.2039074-5-hch@lst.de>
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <20240324235448.2039074-5-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dlemoal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=R5g4IRlb;       spf=pass
 (google.com: domain of dlemoal@kernel.org designates 2604:1380:4641:c500::1
 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On 3/25/24 08:54, Christoph Hellwig wrote:
> Turn __scsi_init_queue into scsi_init_limits which initializes
> queue_limits structure that can be passed to blk_mq_alloc_queue.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Looks OK to me.

Reviewed-by: Damien Le Moal <dlemoal@kernel.org>

-- 
Damien Le Moal
Western Digital Research

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/be1655f7-3ae0-4a5a-ac35-95e9c7d2da02%40kernel.org.
