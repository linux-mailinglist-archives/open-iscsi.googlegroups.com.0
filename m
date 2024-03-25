Return-Path: <open-iscsi+bncBDJNPU5KREFBBJO4QSYAMGQEVYZXEEA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oo1-xc3a.google.com (mail-oo1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 14F4A889469
	for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 08:56:24 +0100 (CET)
Received: by mail-oo1-xc3a.google.com with SMTP id 006d021491bc7-5a20d31ea8fsf4437266eaf.3
        for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 00:56:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711353383; cv=pass;
        d=google.com; s=arc-20160816;
        b=oHY8Yaqrgj5oQRh7/bNR+Ve5s1UhqYhlE38su8MjXMsXgcU4gZxtFtgOZ+Ra0sc3sY
         Mpi2FHmogQR996sb38bOEbguc61daWPjdmbChWUaXfbCq1PuooxptIMTZlxcvl4HSCB2
         txr8raAlK8R6eRtvl0umb9Sv41PCbVRmMqhTvj1fUNPPrwTTheRmHcFCv2FDm45w5lyg
         +UBEgqPc1Omd4o7kqYu2L9kMc/l2O/Mm820eG6HrmNlUETXiHbPk7fq74+nEbw/sSRpY
         zHIEbagEEyySyUoyp5M3f40HshWAerKlTc0hyviUhEz/zMJ2GU7u8j6Af3Ae9AFYnElc
         O40A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:in-reply-to:organization:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=/yZTAj3vMi0IkugVKvrlVGnhdUqMtd/5vxzCfRViOtw=;
        fh=OzyHe32IcvXUVOrVYsXk/bekh0rOJ0CK9K1yPEqTaQE=;
        b=hHSd0WVfYS0j0rx37Qid3NautdKuZRRWgjQYH1nX+jhOcvzQkpaqLjQP7BGXslTbQg
         htsehpo1JK+zAQKKOmHGSBUEywo2UsXA8FkX0RpRof1qY4LkpnJXj7Is/GQILPcUmfrU
         C+zkhajVyV5Zm5p+lOqkO1eKzcxTmVYzwqPqG9kGNxgiUQh+wJVz8U6JfdYzRJfu28ny
         WSfmQbRb8oxnp46R2zCHK/sO6oYtL5ij4VOuO7ktgzzchGDTexqDPuyapjHpIwwmldO+
         w6ovCEXkuHoHR+EYQaxsgpUdfaoXZ91vjNXgMFBpl5Ec43NamqosiMhTbhHrTD6g/l5t
         52sQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=DRIyCw+R;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1711353383; x=1711958183; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=/yZTAj3vMi0IkugVKvrlVGnhdUqMtd/5vxzCfRViOtw=;
        b=RTj6E6qjFSF+L5VcXzkmi/ElEzpZryg+M3MBi9FX892uav/Bk0Hiw0SV1SrceH11/T
         sbextXF5/L+wBh/B+ylYUvfmFQguHj2WPVfIJypm6oGoGTowb7sQM5r8u8k+oNYY3znq
         KClDTa+gpzDEwiKq//jQHcCFsG2YwfRU3Jc+ScJMip47tzHm5szfwXkFdUpIkpN4/X1J
         nc2i1yt1EFwxSZcMVqAygmIwNvwqYkCY5ngVYddI1tCf/2/+/1oUdvaH4deW1iXSDric
         K7hrax71/4PPPZB8AEL1MNO4W6OK/bxw6ldxe3sWB1ILnBWJM/srXRbia45hzqJOFE7N
         LNbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711353383; x=1711958183;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :organization:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/yZTAj3vMi0IkugVKvrlVGnhdUqMtd/5vxzCfRViOtw=;
        b=mD88YrtLVb7NWl23En2S/DSlamCot9KQ5+exe5HVesdEyj+TwJJY0zwrvvUKSiAhjO
         e/3j/PX685s+oQ3sVl2vfz5ilgOCEObL76l/8Mk8znetOrN5qsYU5ow5kor01PNQiTVI
         OmEcJvu9qTvkl9N7CB5nUU8GqTy4S0whtLCxFMA1oaRCXb7TzCvKKZEgkNBp3sZbvzVB
         S05XsGY7R5GN3gfWOEaGpkTOY315VjJUnGXdtbyz6W1NEYYtfMjceAGt6SaBu6+5rt6c
         z5ZjOgJae933e/XG0MS0Mto6dZBBHiqxfRaMCOG8z231189jOMcIeuxEBGVjWs0G1Fh/
         uv4A==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCX98kPY+h/kf26AJF3L7evE6SYkaleNNw4Xt7lh6Q3hQ6Osd9gMCq5j4TtOoUHMgFV7ELZZYw4wDrVCctt9MEcWWkv4PQ+9fj8=
X-Gm-Message-State: AOJu0YwWFykwHQemSHym/16qNcPE+GhPAidOiKBqYLeAeVHHOo+rl+Ko
	J5lVOSuhVHlQru3Ny0s55KPLh4Sy54YsHHmjnYYLjLyTE3DKASKQ
X-Google-Smtp-Source: AGHT+IGI5VtMeosouXlMjwnRYKBOK2sfsa+hxHaIKNDC2YT1NvddH9HTQv1rQSaHZk9AvO3hioAgpw==
X-Received: by 2002:a05:6870:1641:b0:229:8389:a0d2 with SMTP id c1-20020a056870164100b002298389a0d2mr7924712oae.43.1711353382745;
        Mon, 25 Mar 2024 00:56:22 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6870:2b1a:b0:22a:5346:a66c with SMTP id
 ld26-20020a0568702b1a00b0022a5346a66cls14469oab.0.-pod-prod-07-us; Mon, 25
 Mar 2024 00:56:21 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVW+niD1mPrufjx1zpXs35oPFsdr/FY9KbDSiIaBSMQvWSyWLX6VFweZlTX08wdP3Rri/8nTamuY8FFWorxoFcILFXrZsV/J1szE18=
X-Received: by 2002:a05:6808:1a20:b0:3c3:d4a6:30c4 with SMTP id bk32-20020a0568081a2000b003c3d4a630c4mr61216oib.1.1711353381036;
        Mon, 25 Mar 2024 00:56:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711353381; cv=none;
        d=google.com; s=arc-20160816;
        b=pqCaF+up2PW+h0sVQW5u+ZU9N7PLk+XLJdfXKcbjgaFJ56OVUWpQ9MoiVNvSDa/iZL
         FaU0lWOHhTlDaBDZI1DYVx6DntRLf6lvBJ4+wi3P/5II3YCSfiD9VjcWFonv9VDKOA1/
         azSNJhVh/jMi9KUhnF4j51JyJXWx8MmczThlqNm1PgCUD3COCnIITl09WcTywHI/DeAN
         j00qyhyoMdwrYm3wln8MJ+eNH2OUuWA0h01JeVk4ZxhitSSdBKLQB/gBessbcX/Am1Pu
         SUMfO4LIvdGrVn8FErO8Sj3bF4kydyUVGoFd/g49Uut6H9lI5Sp2a7x3j63tZZ1YURdT
         baBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:dkim-signature;
        bh=ClTeIEq8EGww/QzS75qN6+eBZl6epwcS5mmumR3g9JQ=;
        fh=42thyqLuX+U3R/biblipVYna9LUz9grvZASiaIDfzRc=;
        b=lMcdvuf6xQMW6RZdDtnGcH3Yd2B4g+SObDTAlczX8PF9bZzidRahsM+h3Fksf6Xd0p
         giSCsVokQjN0hUjX9tAFHybOsG5XUf2XIgNFgmaUT3abfyGyf2CKOehksCIXZ/XcaCYo
         PwCDJ4zpBmwOJ3Lof4MD8MMnXMYQZbEam/qaznUFk2HDZeKgxpHrdgYscgWwB4+XBByD
         yQX1ogbdqnkY3Gsd+l7LY0fqfdR7QIt8C5BUNr4bO1HWc4Rbjtf9fCNHmXweRztb04W/
         44H1mTHZVInHZ/ERwY3WZFZUfMvA0knjKs6KaYCKjMiK0rCP0ynj7oRCMo6/5yWY2KWQ
         lqlA==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=DRIyCw+R;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from sin.source.kernel.org (sin.source.kernel.org. [2604:1380:40e1:4800::1])
        by gmr-mx.google.com with ESMTPS id k15-20020a62840f000000b006e71eec45d8si563804pfd.0.2024.03.25.00.56.20
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 00:56:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:40e1:4800::1 as permitted sender) client-ip=2604:1380:40e1:4800::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id ECF50CE01FE;
	Mon, 25 Mar 2024 07:56:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8369DC433C7;
	Mon, 25 Mar 2024 07:56:12 +0000 (UTC)
Message-ID: <bc4293a0-988d-42f3-a94a-b6715d72c204@kernel.org>
Date: Mon, 25 Mar 2024 16:56:12 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 23/23] block: remove now unused queue limits helpers
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
 <20240324235448.2039074-24-hch@lst.de>
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <20240324235448.2039074-24-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dlemoal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=DRIyCw+R;       spf=pass
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
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Looks OK to me.

Reviewed-by: Damien Le Moal <dlemoal@kernel.org>

-- 
Damien Le Moal
Western Digital Research

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/bc4293a0-988d-42f3-a94a-b6715d72c204%40kernel.org.
