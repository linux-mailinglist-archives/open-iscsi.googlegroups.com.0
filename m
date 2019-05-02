Return-Path: <open-iscsi+bncBCHZVHVFVMARBEUOVLTAKGQEDS3IJGI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wm1-x340.google.com (mail-wm1-x340.google.com [IPv6:2a00:1450:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id E4D5E112CB
	for <lists+open-iscsi@lfdr.de>; Thu,  2 May 2019 07:58:42 +0200 (CEST)
Received: by mail-wm1-x340.google.com with SMTP id j63sf855275wmj.7
        for <lists+open-iscsi@lfdr.de>; Wed, 01 May 2019 22:58:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1556776722; cv=pass;
        d=google.com; s=arc-20160816;
        b=VBScGiqTxFkCdSxrZYj54/vV1tiEL+EetrUxoX8WIhriFDAtci92zoyMiZx3oNjQsO
         weaOcynjD1iJrl3oLLCM1oIPDXPPbiI6XgNpfpbqZ07GtVnb7bX1ekOasVmBu9PoZSlF
         vKm8jFU7yTcVz+OXzEMMxejZwzrp0PFgnH6ugmZF5wYArVwyLmIjQhvUPXts6f7LRi7b
         QMNdKZwRpnTuQc02aGOf0mR90s8LiQ52/bcMOcbEbCLIEqEeRQd1yuu6Bm1k3CzW1LKe
         JfKplg4bc3usvYSn5DP6gb0DekpCVbXjANfJ9tU3gMfkT9IBh7c2f5miLahwxnMr64RX
         Ol5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=mfwWkMOW3h7JtpsC7IWKD+j08FnSImJ9ajxKl2e0BFI=;
        b=FPnaAHtWKa99MiFrgW5YgTGNj06qn1cfgT73eF/EY2vGY08m5+3t2u6gGVbVYskFLo
         3KkTEBJXhxuuwIdez/U8IeFx986/BHa0LROkctRl3QlJS9l0GCjONg4u4+rdMaLlOhDv
         xakgW6VF7k8sLgHL8LW2pBlrzaAcVu0nv8vX3m/zRtawLW06V8rOx1k745RFKwplhVEh
         eaXr0hMzeY3FlMhSLi9kQN8pmrkf9VWXHkfj+1UEC1R+GrqLScxLp+Gas8cEVRq+Or+W
         iL+EL5IAiDUMBkoh+1xYROEml9Wt2+tPyejh+dy8lsrS4QBfP7f+eOOjitZ423en16ri
         Bs9A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mfwWkMOW3h7JtpsC7IWKD+j08FnSImJ9ajxKl2e0BFI=;
        b=H+87UwlLqBNXcmQgjzcXVuLg9SYE+eCYC9cdl2c4/tzl1tD474RyBLGRtBktaJsuJw
         dFlO5VzecFhqaggzq3/hLwubxP4waDm5fbiiSGiwuqGWUbet+TlZptxs3GqqdesmbuYi
         ZdgAfDfk2S0XqRm56t5bBZGyorU/VoguSTumcB9g0lYer8zfQX7puA+il5R0eV3Awi8i
         xfRH6LBY8MTT8Re6MtqAE9qMmlHw1S62NW0Ak8gwbHdS0jhYHHLpJBAat3ZFtdr7+H4r
         GNwkLqTgpUD/CLNJOTmc5Jt3O1UR6kwHPV6c83TvSzFBNYSKbMnDc2DfykUmKJg15lQU
         kUCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mfwWkMOW3h7JtpsC7IWKD+j08FnSImJ9ajxKl2e0BFI=;
        b=jvr6Jsw83G1olwnVX6/GtKlm2Tnd25D3uL/YCYI5uxiWwJNwz61oRBBPNKXxG2bSBg
         +sP9b9a7SnSvJXQ56kXotySJ+4snH4N37SfqSf8pNNQm/3DvO2Rs7TqySreHzxSqfKX6
         nI+y5brne2lTGyp3Oqqj6yWXUEwNNyMfSp6v84aXxlZRt/ePIC1QUvJCZGn5glQnQgRD
         l/ecrD5hBw5E4yfClxOY+7JscdwsnQcou5zwJriB6G1jhj5IRiLZxMJb9qo6qpdWR3nP
         90BlDOFmbUPJ6ioURZtYMe0MPyq/gDOv1+D5qm4BzK85wqX32LqAaQopyNUNPHarSwX5
         vrnA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAXF1tHwDFiXeVHZFwhHXCBEVNunSlTgkN4vQB/JrLd7p7xR2DbS
	O0ElXq3YYRstShk2UnMn0tg=
X-Google-Smtp-Source: APXvYqwY9XcnTKZ6WyxlB04FrnA/wB9f86RY5qVyLtooj+aKpPZrp11jUT2cpwv9A/Epk3cnivuudg==
X-Received: by 2002:a5d:55cb:: with SMTP id i11mr1296375wrw.187.1556776722668;
        Wed, 01 May 2019 22:58:42 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a1c:9e95:: with SMTP id h143ls299960wme.1.gmail; Wed, 01 May
 2019 22:58:41 -0700 (PDT)
X-Received: by 2002:a7b:cf17:: with SMTP id l23mr923027wmg.51.1556776721898;
        Wed, 01 May 2019 22:58:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1556776721; cv=none;
        d=google.com; s=arc-20160816;
        b=HJ4obpcq6XTMEXzQI009/Ac/lwhxkE9PJE0SdoJB5OqxiPcMx2sCowxVa3XDD36PnQ
         6inmDGVRk6WfUqeIv9SEfcC/WU1X2gw9NVabi/C3URcXfviMiU7L2tCG1JBfDI386kCc
         i2OhSzsd23EYIQQXC14B/RRBaYxRwV3xS3e8xWctZ2CzvDaTve68/2G4Dnn98xt3mHPU
         vHuVoeVNVRnrsls2PwFWNuyP/sAED5dLz4ABuNC4WR6xne2h+FSyk4OY3WeXl+Lb7Lvv
         Inf0QyTSTqwTvodEh9Y4KVc09f8Kv03039a/0VXnkSy9v6DVUYmhSHyATqOcqcjl/dV+
         5Psg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=7yynsisgjuleKZWcBiaXgvPEV3fu0V0hbR8s3tRArgs=;
        b=RDz4JOowEKhu/umV3RFpnpjeQ0S3ZqyfnmleMjyWra9sJcUrde0Atbv+L3AuHuHjzb
         fje6HbeaKh/FMFrkcGXDXROSPD8SNYj5OMMb8zy1d+tNb+gj4JuP2rLAnF13Z1eTVNnr
         GJw7YlBnFaFhZeSGBfFKDmx2KsJ374A8JDyP/5jNuT1a2K8h98v0DiIiwe+KjmL4yOHD
         t5Df7BNIMWTKuf78oxyeKjLm6xYbxMzrBZdfXSD1BP8QjGUEy4TOujRhhiuQzeutS3Rc
         P/h7015aeYnunCjsLF6k25T8JRNP4ZiEmTMu9uwYAWhcsPQ1L6FngKKeeDrfFmqrMjYR
         OuQQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
Received: from mx1.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id x18si157588wmh.2.2019.05.01.22.58.41
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 May 2019 22:58:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx1.suse.de (Postfix) with ESMTP id F1D2FAC4B;
	Thu,  2 May 2019 05:58:40 +0000 (UTC)
Subject: Re: [PATCH 01/24] scsi: add SPDX tags to scsi midlayer files missing
 licensing information
To: Christoph Hellwig <hch@lst.de>,
 "James E . J . Bottomley" <jejb@linux.ibm.com>,
 "Martin K . Petersen" <martin.petersen@oracle.com>
Cc: Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
 Willem Riede <osst@riede.org>, Doug Gilbert <dgilbert@interlog.com>,
 Jens Axboe <axboe@kernel.dk>, =?UTF-8?Q?Kai_M=c3=a4kisara?=
 <Kai.Makisara@kolumbus.fi>, linux-scsi@vger.kernel.org,
 open-iscsi@googlegroups.com, osst-users@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20190501161417.32592-1-hch@lst.de>
 <20190501161417.32592-2-hch@lst.de>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <2ae616f8-e150-0213-537c-d035ce0f6d57@suse.de>
Date: Thu, 2 May 2019 07:58:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190501161417.32592-2-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: hare@suse.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted
 sender) smtp.mailfrom=hare@suse.de
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Spam-Checked-In-Group: open-iscsi@googlegroups.com
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

On 5/1/19 6:13 PM, Christoph Hellwig wrote:
> Add the default kernel GPLv2 annotation to SCSI midlayer files missing
> any licensing information.
>=20
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>   drivers/scsi/hosts.c        | 1 +
>   drivers/scsi/scsi.c         | 1 +
>   drivers/scsi/scsi_debugfs.h | 1 +
>   drivers/scsi/scsi_error.c   | 1 +
>   drivers/scsi/scsi_ioctl.c   | 1 +
>   drivers/scsi/scsi_lib.c     | 1 +
>   drivers/scsi/scsi_pm.c      | 1 +
>   drivers/scsi/scsi_sysfs.c   | 1 +
>   8 files changed, 8 insertions(+)
>=20
Reviewed-by: Hannes Reinecke <hare@suse.com>

Cheers,

Hannes
--=20
Dr. Hannes Reinecke		   Teamlead Storage & Networking
hare@suse.de			               +49 911 74053 688
SUSE LINUX GmbH, Maxfeldstr. 5, 90409 N=C3=BCrnberg
GF: Felix Imend=C3=B6rffer, Mary Higgins, Sri Rasiah
HRB 21284 (AG N=C3=BCrnberg)

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To post to this group, send email to open-iscsi@googlegroups.com.
Visit this group at https://groups.google.com/group/open-iscsi.
For more options, visit https://groups.google.com/d/optout.
