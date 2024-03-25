Return-Path: <open-iscsi+bncBDJNPU5KREFBBOGZQSYAMGQE37MFRBA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oo1-xc3a.google.com (mail-oo1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id A8CE188943B
	for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 08:50:18 +0100 (CET)
Received: by mail-oo1-xc3a.google.com with SMTP id 006d021491bc7-5a486a8e1fdsf3852231eaf.2
        for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 00:50:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711353017; cv=pass;
        d=google.com; s=arc-20160816;
        b=LIiFkWU+AYkT/R3bgwAnGRDUyRalasaqhhHFFZSJyQx7fivB928Ld0Ub2/1BAcf2ce
         Hbt36gpn5h+irh4XUyJOEXwaQYnBA4Sr/dJW8Z2ZpSNDvGD+drtDMtDZxxsNXWIKKwkZ
         eieqIYSMEXZ4TWzPUf1mvU5flx4/7SeNBxNjVWyZJzSbJJKWByxxamP6oNLoK7J/FtIe
         hdYYJDcZIPqUfEIKWGJn4/1MrCIMk/vbCehO/GGS0omA7nwwUwxUXTVGICA/AhBGWtBa
         cWb99nen0ZbLleN+yySZODCOaR6q1d9PnjEV2+y/kEsFJLqvNH+xU/XH/m491eEIQncZ
         5FSA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:in-reply-to:organization:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=HccFvwObLG9Ji5C4oZYCsWDguVW9XIh2H+TOfgsObgw=;
        fh=v7zWdg79VibHixa0ypIPrluU7GK24gYC96VxM83pWOU=;
        b=xdhe++Q8zG6+xeBu4J872wqq1a5kkfIHsFexmZIuU2kQmlCa9x3ZPgrYVyoLINMFhy
         ducI9I0VuLl7RWDL+D5HXq9tAi0cfSJJzH2dIcShAf98cje6U3X4zC5eSVimRLE/+9BK
         tfKZT3wUvZ+lhvRqzuivmC04c7oYJpB1pcOMZsN1fxlQR6k74NSOI/CLOjuLYpdB1khA
         pq/LyyQRtxwFec5/z5SAnYW4GMKb270X6LcPfa1edPRLiIJ7wApLRbqMAx1bzvGB5svL
         zqXtZ5kxj8jD5D/cDJOPeTL3y0ISRzCN9E7DDqQcZ+79MbouornjXPNb7Za3zYH+N4B6
         BH5g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="nXE/LH2T";
       spf=pass (google.com: domain of dlemoal@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1711353017; x=1711957817; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=HccFvwObLG9Ji5C4oZYCsWDguVW9XIh2H+TOfgsObgw=;
        b=sts3xdFFRW+U8muqr5ccSFkZFn2t3j1AsT3JsbFHcIMyYUW2B/72iEOBM2uBaSExhL
         HYkAkqP7ArSLgxJeZRP38IDHqMuVmM1+zZGV3oDShdVfqdV17JncMNu0pb5Ufhr/ca7d
         vs0YItxhEL6KYM/P1X7cFFpA0mt3o8p1UutExD8cARbhKGjstR1YYk/P9ESfPP09dToi
         KLsiOqrfiKjtGFkh0gEe9P4A18GWfat0ijuR39X+cPBl3KW+b0ImHlolKEnGyU9VYwY8
         f4Fj3UDUGfz7BXYP2g64yYI9w8FRw0Va4IjgKcqpoQWC5BAykx4xipKojaLIvKDsA2O7
         CsbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711353017; x=1711957817;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :organization:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HccFvwObLG9Ji5C4oZYCsWDguVW9XIh2H+TOfgsObgw=;
        b=jEMsDSJUcO2XzIvtczoJWj6NBw8oNE/aRZ50XbwQt8zLOr5/0RCKFvB3GA5SV0oS71
         kQyVdQdn7awio/zUkBjBQ5slya8cbOtb9afGR1rGs/dnpzxhrPoj65iQ9F7xJn304ZWG
         HXQgB5GuLUofgMUUODZyId+rZTM6uhPoCLcXOw5Po0FoIiq73V2f9F9o7Ev4p7QbmDEQ
         tzuplQQ2SQvHg8iOGFmN0TnTze7GHv0yk5BU4ir/67eFE3DXJs14bleQ8kPBXj816Fty
         1dANTJx3q7+W7IOf5eajDxsMaiYC+O9th9o3ixDu8M0aksTrCCbbKlZaMqpBZNV9JKgy
         P8oQ==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCX+RopLTUb7Zgxl8621mbgRRR1FvzAdNbekXH4B6k7gw5/refXbAs9KwbedmUXnpVhL5upDdv4L58fd2O4oqL3x0CBW9gNnjgQ=
X-Gm-Message-State: AOJu0YyFWheBe883u58CMDutpzvX6r6KKQo6mXaQB0BS3I5ID1kXIU5J
	PiuMtVzAesg9Z5opPQRNlORm+XjsnMPhS7kwNvKuJwODitX0tCuY
X-Google-Smtp-Source: AGHT+IGkiPwSXe6JvWkza1CI1Ugd3KAsaM2ROTUkrvVSpuvVPawoV5aKb4QmfvBjBKGQXXBBHxIn3A==
X-Received: by 2002:a05:6820:989:b0:5a1:a7b3:3d0 with SMTP id cg9-20020a056820098900b005a1a7b303d0mr5546260oob.4.1711353017364;
        Mon, 25 Mar 2024 00:50:17 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a4a:5502:0:b0:5a0:3387:2adb with SMTP id e2-20020a4a5502000000b005a033872adbls2645665oob.2.-pod-prod-05-us;
 Mon, 25 Mar 2024 00:50:15 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXXgRlaPw0Rg+NE9DtaBU+PxnfKnsGaIWamqH1lWYr8paOz1sM2ZZUY/D2Of1+Qk58YZ2Jk3CL/XonziVxiV9f4RopSeG7bY+Gh+/A=
X-Received: by 2002:a05:6808:d4e:b0:3c3:d22a:b8e1 with SMTP id w14-20020a0568080d4e00b003c3d22ab8e1mr851014oik.33.1711353015723;
        Mon, 25 Mar 2024 00:50:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711353015; cv=none;
        d=google.com; s=arc-20160816;
        b=TGuBsgZHtTZi+Uj/OadwomIdLy7OP7rivpKnJLgIBp+fILXFrbSpVMheLpka4pMh6q
         WBBu5fILpnCzntGFVjcYSF+QiJK4mQXEdpvYFZXTczUVBqATCWkFfEjngKbhppUOeIv8
         yqsDOo5R11swN+/eldUz5UaJfuutt12PFaAndQyFZNuVfE00fzoevOeJqswwsgrAHyaC
         JLJHRGMr1kPVJcMA+E0cRfCcXJyl3t87v7a1Bs5GTP3DS0GawcwGzH71WI4kzI6hqRr5
         8jTdEYPiElQ7EDvuNexk6yhFO/n1aLuWGnL0nMT8MPOuIBcOPj7iTkr7dGjGGKC+sOpX
         SawA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:dkim-signature;
        bh=e40gzKWQ7xUOKu7nUJHkyrD8AYoIRciYCQiK2DXthTc=;
        fh=42thyqLuX+U3R/biblipVYna9LUz9grvZASiaIDfzRc=;
        b=S09tcpcZZM0ktHnyOAI2ygFfRkHoYyqRmJrOKy6EI81YiNeUD5toObczYIG3MyLMR+
         gkb3+JtEFdlSDRYxcNb8B5jP7kp8ho3KmRRlprXrt2vuVW8LALwITfbwVGZCnzc3GENO
         EaAUCyqx5A67HNjB9QIKEcBIE8ttfiXBouniQBeX+fOGVhDnBpGMZMiW64RFsofSiSXI
         KwzyBiIWRQ2b3s+Z5Z+2BC4XmN66DeOOlfGY2SSBap5CkUg9TI4B5EBonn1xh4qOiXHo
         4f/rZhnjiYV65q0D9oPPXcyOlMPUb3TZWV0OP+W+xua9RayvlIqgB9a/y79WAWvlvhz2
         CvMw==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="nXE/LH2T";
       spf=pass (google.com: domain of dlemoal@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from sin.source.kernel.org (sin.source.kernel.org. [145.40.73.55])
        by gmr-mx.google.com with ESMTPS id x15-20020a056808144f00b003c39f1a5335si279218oiv.1.2024.03.25.00.50.15
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 00:50:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of dlemoal@kernel.org designates 145.40.73.55 as permitted sender) client-ip=145.40.73.55;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id E97D3CE0ED3;
	Mon, 25 Mar 2024 07:50:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 73AE8C433F1;
	Mon, 25 Mar 2024 07:50:04 +0000 (UTC)
Message-ID: <6944da16-2a6c-42cd-baa1-c6d6d4dfc866@kernel.org>
Date: Mon, 25 Mar 2024 16:50:04 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 19/23] pata_macio: switch to using ->device_configure
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
 <20240324235448.2039074-20-hch@lst.de>
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <20240324235448.2039074-20-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dlemoal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="nXE/LH2T";       spf=pass
 (google.com: domain of dlemoal@kernel.org designates 145.40.73.55 as
 permitted sender) smtp.mailfrom=dlemoal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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
> Switch to the ->device_configure method instead of ->slave_configure
> and update the block limits on the passed in queue_limits instead
> of using the per-limit accessors.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Looks OK to me.

Acked-by: Damien Le Moal <dlemoal@kernel.org>

-- 
Damien Le Moal
Western Digital Research

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/6944da16-2a6c-42cd-baa1-c6d6d4dfc866%40kernel.org.
