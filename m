Return-Path: <open-iscsi+bncBDJNPU5KREFBBS6OQSYAMGQECWBBERI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf37.google.com (mail-qv1-xf37.google.com [IPv6:2607:f8b0:4864:20::f37])
	by mail.lfdr.de (Postfix) with ESMTPS id 089E788935C
	for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 08:27:10 +0100 (CET)
Received: by mail-qv1-xf37.google.com with SMTP id 6a1803df08f44-6962767b1e7sf68877656d6.1
        for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 00:27:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711351628; cv=pass;
        d=google.com; s=arc-20160816;
        b=UzjrVXclgjdlSRc6j3uoN2Jc3jfTTrCUcsiTjeqibFzXqtjY7kZfOtpTLv0C71mRzg
         nOBRespKNcFmRRb1or5HrfzABG4/oA6DAkdIwvBvpNhUOd0MZBXCb2BOACj4/g9HgdtN
         1MWvPfn9R1EcIvVO/iAjHnJXJlGVSqfGAMiG7EVGGuFewMGOLiZaedw62a0zEJa9wgAO
         qjjRjMVKNWVHkWU8vERcalsk/eK+J6zDcwwUKb0Ri2QM84o96ZNBBVDUKAA9uB0QiWko
         tmQVJcokcZWiZotwW4KoNcnmLlolr5XondDilYvBmR0cGN4yJQKOgEwsr8jJcRBfkiZh
         PkJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:in-reply-to:organization:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=oZoI4aqnXAg8/6inc+p58aO73MmdMcveUEI12o3jQtc=;
        fh=zCw5y259F+57qm99EJSDTJ4cZGTEFejo/ViSvCnATHM=;
        b=hGaO0gU7vOzMenrjPZb606fr+u2D3dmnvBFAZ8p8sRyDnImZIXNpoH1QcP1TXHzG6x
         rRQ/DtufVaowaIZ429Y+vyxXiS0p24Kt53zq/xy1HkjpuhZCWeZ2ufcFTQSmvNfnN3UR
         oCdu9ry/fJp/nJd2HUA+cedlnTTjnQPoTKXCGsCRuO9jDRokKU62wNIHXkbSeF+/gqdM
         Cbf/5Axq6yexGEttm8iESh7esyWF18vHq8D0WnaIuUDjON86DMxo0Egjy6LQO1ZO8AMy
         +gThL+8Oka8mTDJNj5Db6noRVqhSJ7QJWSA3DlZvI1/aoz4GWxg9Oywpx5PuR+Tkz803
         9e3A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="knq/N6Eb";
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1711351628; x=1711956428; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=oZoI4aqnXAg8/6inc+p58aO73MmdMcveUEI12o3jQtc=;
        b=RnyRgOkUnnWVIqdm78PcCf3bmW2wnxMDb4+6ZBaSoCePC5YjXLWfargcSyyG+1lbFY
         wb3BNTUQhYYtpHmEIPRddlMBPwdUpjAUXZvmUpKZ0V0kF36hdDeXS7+TdSAz9xEcfWRg
         97+p6kKas5708RZ5Di40ZKsOpbrbyyiOV2hHVjQYYkgioCm/f7PMK8RZXsAYcGDnQWeP
         obsxxfgmXnrzcXt+UURwiLKr/CjOOzT+Z1T3GhO/tNkkVUfviCrQQOMqvPWCeEeenkWj
         xx++E2grmaUAj0cOmZm9QHmjtcZzwJ4dZ0hzI41YR4BUkoDOy6RUObl/dbF7LLgbiyGJ
         sBhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711351628; x=1711956428;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :organization:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oZoI4aqnXAg8/6inc+p58aO73MmdMcveUEI12o3jQtc=;
        b=ReQceL1hj0fxVciXTzG6Jx43YsA7glZxwlB8v8VKncu+2hv7xGyc7lP0ksb1gSoDvW
         l5joC8RjPiyqJs/TADPND5VXZYsrRwH4u2CZd2xIVvQ0Y8X+/jI20MAPeG04WO6R18i0
         FdyX+cB+McNmtA58tPhuVhLLJRCjM+rXlmM0PlU9Pbeuvk+6/LPRD2blIAJWSE31HSi3
         V9JYI2cjZV3oiXw0ypXftLsz4xiDyKJfsLPFWnEdnx+X4Ky3S9+lTXF4IYBvIBGmLj2R
         RdM9/ySY2h8O7Hbb1tQhKx684k6rbx4DOBl+ClQN1eK9jf0aOCAQecYedjEhB5BmTMhr
         fBbw==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCWG3kt6vR8QFaPGFAsOE1Msci39CCTatSfF+pW6EaOEi8P+Kh3NbLqX5D6DO4IOX5LPiVP3bUdQrCO+CJyhINYfXKCNmosay9M=
X-Gm-Message-State: AOJu0Ywnd7/mEOVdFF470DDB95XZeMKR4zB+SRpCOJeuFMihhLceTUA0
	cBK5di9JEMO/xwd2WOsXA4yhtWoOHepHEoFsDCr9gbrimFpCylCJ
X-Google-Smtp-Source: AGHT+IHfVe/ZYLuKMBAkmO/3808jtGKzfvq/PTQQQ2T4xZ+VCuLVqi3MdeCOrFwmaPO7clW2nUE7nw==
X-Received: by 2002:a05:6214:cc2:b0:696:f83:a88a with SMTP id 2-20020a0562140cc200b006960f83a88amr9029726qvx.28.1711351628659;
        Mon, 25 Mar 2024 00:27:08 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ad4:45ad:0:b0:696:70f8:57c2 with SMTP id y13-20020ad445ad000000b0069670f857c2ls2787729qvu.2.-pod-prod-05-us;
 Mon, 25 Mar 2024 00:27:07 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXNYkYxgc4mfSJhwk+NJAvxCAwDGKaBwHI7MmR8G2Xl/c0te1azZZ82d6YMLSQwdCdNdA6QxSRXF6LH9NdwEiKZPxLMjoVKtdRFaNA=
X-Received: by 2002:ad4:5ec9:0:b0:696:32d5:98d3 with SMTP id jm9-20020ad45ec9000000b0069632d598d3mr8215951qvb.36.1711351626885;
        Mon, 25 Mar 2024 00:27:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711351626; cv=none;
        d=google.com; s=arc-20160816;
        b=oyrsWJBchulg3Esb3Kz4M9xL2NiNGgBv2HxmYQT83jj1VzdyO9fbMnhbQtJ+F8mH9M
         +iFd5JaEbthUnJQ6EPiqqja+GzrP2tEkqquuKIpHZUGfNG/8o9XOgPpJIYVcx689QQ3J
         QS1Egz23DCkLH0UL7S1lw4eSFyVlpaEjfNyFMou+1Kwwsea6FpIjz+vUBDwo6GQI4VXP
         X5Cda9FONM8P0tauKv+jFAbBJew6LaF+llVgzf33/4SiC30O9s6Vu9CUH75mVpnxxNYS
         zFWMjIXaYTE7IHiHCGUQJB0TCxwbi9EYeabhgrRkJuvcYiQIYsG1jfOWyds7xtY1Dtps
         IoKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:dkim-signature;
        bh=j0gtE3T+WNBbtVr720MjtWg4V4wVySapuGzGIGfMhCg=;
        fh=42thyqLuX+U3R/biblipVYna9LUz9grvZASiaIDfzRc=;
        b=Gz9DnNxfYHnCRWgw0CBft9zX/BY0VLO6gqM5CvuxWnusVISffUCync5M8FSsV7UGXe
         04oy4gn3gXbbiApbcnCxNKve6TyX+XVxzhTRDdBOcgzswPBV9gODW1aaqKFjLWLD8DLY
         saptvk3UE2XiOl4MUHISEHknNizqj00maWESbmb4vjpE5PiD/+1td6Wo1ClzAam3q7lK
         FMfpBPM1wR919xRG9TgbZnJL+WqQD+vhAanWMpt//4GM0L3eHQ2IeRY2jFyR0ykeHcte
         xLs2ySeTS4yuddo3mevF0kaciDjXymV1hZgXKvNV7X+hlLKBFcxIxYMHOfvUM2PUIMB/
         zD4w==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="knq/N6Eb";
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from sin.source.kernel.org (sin.source.kernel.org. [2604:1380:40e1:4800::1])
        by gmr-mx.google.com with ESMTPS id dz12-20020ad4588c000000b006965ae1fac6si532403qvb.1.2024.03.25.00.27.06
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 00:27:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:40e1:4800::1 as permitted sender) client-ip=2604:1380:40e1:4800::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 21AEDCE0ABD;
	Mon, 25 Mar 2024 07:27:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F25CBC433F1;
	Mon, 25 Mar 2024 07:26:56 +0000 (UTC)
Message-ID: <80162a6e-12d1-4fd4-ac74-dc5388853323@kernel.org>
Date: Mon, 25 Mar 2024 16:26:55 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 06/23] scsi: add a no_highmem flag to struct Scsi_Host
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
 <20240324235448.2039074-7-hch@lst.de>
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <20240324235448.2039074-7-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dlemoal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="knq/N6Eb";       spf=pass
 (google.com: domain of dlemoal@kernel.org designates 2604:1380:40e1:4800::1
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
> While we really should be killing the block layer bounce buffering ASAP,
> I even more urgently need to stop the drivers to fiddle with the limits
> from ->slave_configure.  Add a no_highmem flag to the Scsi_Host to
> centralize this setting and switch the remaining four drivers that use
> block layer bounce buffering to it.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

The USB hunks could probably be moved to their own patch following this one ?
But otherwise, looks OK to me.

Reviewed-by: Damien Le Moal <dlemoal@kernel.org>

-- 
Damien Le Moal
Western Digital Research

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/80162a6e-12d1-4fd4-ac74-dc5388853323%40kernel.org.
