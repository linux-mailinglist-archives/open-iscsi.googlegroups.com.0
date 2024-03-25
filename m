Return-Path: <open-iscsi+bncBDJNPU5KREFBBGOKQSYAMGQEBQPKUVY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 949728892FE
	for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 08:17:48 +0100 (CET)
Received: by mail-yb1-xb40.google.com with SMTP id 3f1490d57ef6-dced704f17csf6482248276.1
        for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 00:17:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711351067; cv=pass;
        d=google.com; s=arc-20160816;
        b=X6NoqTPVa3aLNySCnjemQj4pwa7j6ZIF3ynAkxX7++dI1GY2k8CJllY6eCTd1L+xY/
         DsKRqtX+pBapfK9G3aY7Bri1EL8F2yVy8CWUvbGXLorQr7IEVkJ2OPDr7Rld3uMC/NOo
         j00ep5n9RvzfnYacqErDmvAnvIX7+4gz0iUEvpgLZFTNBAPrEn6n4nGLdAhJCMh2W8Oh
         t5hwE7sg8XLocgGpgwfG4XRMrFRnfdMd2yTMjsjELSdkRnCwQkBEwgzWDIjDslnd/N62
         mSMVNNdNc2FpxM3yeeWhAeQcnwDNFeFhFh3A+9hoA5CIS7MvMe/x6ok49Kdvh3WqWyYg
         if6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:in-reply-to:organization:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=vxY8O184Zs0SC1BTgO4bKC4M/FSPcicczSA4OnY1chU=;
        fh=K2SJSxj8G/z2aWHLPzngMYKtqp2V4aE5v3wkcEJlq2s=;
        b=t5EHszn4RzMAMr5J/NUGNsAj9I5NZH9YQ2+2ToYJjXB8D8qdVzBdYGEXmignQnOYGC
         78uOjrrmA2ElU9NUDjyfMrw+Np+YLobwMdNbG/sS1taSOFWyv98621A7aE2uTbSVVsA0
         ct8/HQVaKN7tNETsV5luIUu5SmBcvw1TtRxxNCdTUJQcG4knkUYxiKoxLEOaCjdT3SP3
         XcrXuvDGmhUlRg68CRM7CZWFc2Kf1FCN9w+mwZ/lYgaqyWDF3c0/T12onqlb+vogEC4o
         4Y/liryc/YGs5M53PLV5T3peEWisTjtqIv7Sb/J381qQxvrsBQIoxiAKM9+9xtgxY10B
         r7+Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=dSlxD04j;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1711351067; x=1711955867; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=vxY8O184Zs0SC1BTgO4bKC4M/FSPcicczSA4OnY1chU=;
        b=bntnvsR618iHlvSVzOhatHWULYaZ9+HxWYDtBVERsXXRkqEEtcBbxogCNc+T2C81S+
         m35ljj3QFTcUT5rcrlFT4qfd1+TshzQ6XZ2om3Mh+8NmeKcsg7q4LkfYSKmsd+mlxCuO
         cmi0y68LP1aN1IjoapBtouHxSpdUb/eYLuU7Cya4n9I423aHMFznLhrvcaMiPyMG1rAO
         4wqRvwBju26QKFzMVJCo99T36y3kwhP2Q9dykSa2dtZleERc+g25ipoPXePifCjxtK4W
         Wc3t+9/O1jH7HIxnh5ga+68jaAp8UWaVtqEmQMGs3F7oTvDYLVnI/ObuhIYg0r01h7Y3
         w2Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711351067; x=1711955867;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :organization:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vxY8O184Zs0SC1BTgO4bKC4M/FSPcicczSA4OnY1chU=;
        b=cHDBbvHEZCcii/GmSoeDK/+wEbnLJgwuTmyhJApTDwsRkLRdaMeN4mHEKwgVoZ0O7k
         fzK78g7nSDNGKpMdfXExoG4ULrzFPgdwFZPEG5M5l1zVJA14bwKnKUxcq9nu9oKtg2Ff
         GqSyMQQYpXJzPwtmzsoBMMy9ztumB5EQatPgZ2Y+n2FfLMH/NtV643e6Vhpe2GuPW1Ok
         1kzRX1F3qOi4dbkJSOMdb2M5F3kXPV3WMZ2EPkTzxfnk+CHyPayNfOxvid6Jqn7ZDfry
         Lv7uaW2A+9L1WNawKwU3cgCcC24RQ+hmvJ1fKu10ra9prFq+3oQONAIApvCvs4iVwqzb
         QtVw==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCUkXeKJSU3nZaGazHNjauVmDe8zzrmRPIoBHMSGQhAYlhKdzNtsaYl3UwS/SQ3F9j9PpDLW4mhVU9IG8nKpVktyaSewXlXdc+c=
X-Gm-Message-State: AOJu0YwwdHfOB5prnA4+IYIcVDLmZtEFXdmDt2/OEI2YLEOWdzWN9tqt
	ZfCPEeJmfEZXT3IZiakIMcsoeJwq8WjJXCUUA+76Csj9Tenkd5ON
X-Google-Smtp-Source: AGHT+IF7ZxTntdkTZR+5m9COXBVupi8bwBLjAlh+gyQtfKh3R7PuFNOa692ODuwxhNqybhvcHRjnPw==
X-Received: by 2002:a25:951:0:b0:dcf:9018:67 with SMTP id u17-20020a250951000000b00dcf90180067mr4690106ybm.42.1711351067518;
        Mon, 25 Mar 2024 00:17:47 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a25:d88b:0:b0:dcb:b370:7d0c with SMTP id p133-20020a25d88b000000b00dcbb3707d0cls1293655ybg.1.-pod-prod-02-us;
 Mon, 25 Mar 2024 00:17:43 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXkY8qJWk0x3gI09quNTIdG6QHK8ouUMRVBd5GWXPufKzf0CzCC9GpnfItUxoXAIO4TPSH7U1LDrdQ4EwrLcE9lnUalF5qJ/MeOXlE=
X-Received: by 2002:a25:1389:0:b0:dd9:4a30:8d5b with SMTP id 131-20020a251389000000b00dd94a308d5bmr4070950ybt.57.1711351063355;
        Mon, 25 Mar 2024 00:17:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711351063; cv=none;
        d=google.com; s=arc-20160816;
        b=txnKTaB7uYafyQcbuf4eHNYIz49SJKkky5iGmkSmoZor2HDA6SnUYUneClcfvxDVf/
         9UdlR38HGPlfFDMcONOwAV9fkZvSbhD5ZAgjCFkUgK6sKGEvQnTmQ47j0kHCg4nGJKDN
         nde7eodEjYzL3iXfUA8fhRqMWdm6W/aXvhFeQuT6QgBxDSAErXqBIxNuPn9ZmCywprfy
         VVK4zHKlSC9TlgvVTseBpsUSOCCENJ4eN2muqNpM/9WYB6Mkx94/iCnM7KQcGigdukfl
         BU00lNGwPR0sNFxDalMVc9EhQDwaTIkMI06t9iPbvADIGa2liISJ4NlVaxkFesjSIZFc
         hqTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:dkim-signature;
        bh=rExrY1kx3gGrFdOhFLvhp9E3IdR0L42WIU5K30Z1pNE=;
        fh=42thyqLuX+U3R/biblipVYna9LUz9grvZASiaIDfzRc=;
        b=kP76l2HojjNOYnu/oqF2MOawPxKQV8AUAvSmYmY6F+y6CMI9Em0lC18/8VcOglgPIx
         p2s1nu9PRTOdblJA2VbZRbWTI2B40IFWJv5INJjVpo2WTkON99YdN05/Bim2JfQG/y6x
         ji7Q9PbR8aSHrVqCjitPEoXYfOJRlFXfn1QMJgZtbQ/jYrsFDx/oc/MY3WTifyjJXw0P
         +jrjNUbPWVNAO+gg07BERZigwZX3+Is1SMT8jv9Ak0AQZrNr3eem/BSWQ9XEY8T9OsGY
         FlZOfODtoFCKUab23D1M46ySTVG0BRvwZtniwNXPa6DAK5nFo6iZuxGPuecx8ooR6QaA
         OS+Q==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=dSlxD04j;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [139.178.84.217])
        by gmr-mx.google.com with ESMTPS id d132-20020a25688a000000b00dc657e7de95si399770ybc.0.2024.03.25.00.17.43
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 00:17:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of dlemoal@kernel.org designates 139.178.84.217 as permitted sender) client-ip=139.178.84.217;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id DA3F160766;
	Mon, 25 Mar 2024 07:17:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C16C3C433F1;
	Mon, 25 Mar 2024 07:17:35 +0000 (UTC)
Message-ID: <04beb70f-38b0-46f7-bbbc-24cf40a91d70@kernel.org>
Date: Mon, 25 Mar 2024 16:17:35 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 03/23] mpi3mr: pass queue_limits to bsg_setup_queue
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
 <20240324235448.2039074-4-hch@lst.de>
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <20240324235448.2039074-4-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dlemoal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=dSlxD04j;       spf=pass
 (google.com: domain of dlemoal@kernel.org designates 139.178.84.217 as
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
> Pass the limits to bsg_setup_queue instead of setting them up on the live
> queue.
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/04beb70f-38b0-46f7-bbbc-24cf40a91d70%40kernel.org.
