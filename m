Return-Path: <open-iscsi+bncBDJNPU5KREFBBG6ZQSYAMGQEFU25T2Y@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CABF889435
	for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 08:49:50 +0100 (CET)
Received: by mail-pf1-x43c.google.com with SMTP id d2e1a72fcca58-6e7149bc12fsf3497635b3a.3
        for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 00:49:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711352989; cv=pass;
        d=google.com; s=arc-20160816;
        b=fb/4NzonBsk+m2e+oy9IG+I1xG5t2TCdg/4v6An+nDzToVgaKuXimZT0s7DhllmWtF
         nGJ73k1s9zVprX0iRwufEk66RBFBtje331NGlmBuNz1L9OP6vhaBmr0Z6uuErlQN77XP
         PDO048hYRkVsDA6onfgwRH0QaiJLI1zM55+k+AfCsjzh4eXucTgAh6lIonxTYS9ykuNv
         2gaBMUvafe2Sx4QS9h95T2Pj2U5l2LZgJid9ivvX38b0IVK2AnhxpIGX32+MujVOnR3C
         FKl/AuHBS5WRcy4GSMg9ED+oCuQ8ETqogAawqlI8GyxjqoDumXtzPR0D1M29hAVgp1kg
         mgKw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:in-reply-to:organization:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=EWH7uB64nzr2wSk7sRLuPa7VxhZF26n3DIxk5I0FjQI=;
        fh=lcMmrniG7hGLgxMF33JLlKuHvrmX3F7GSMufBZnXX64=;
        b=0nYq+spSVG90pEoKahzJQrQcC8e/pINdSBHkSHd+v5WiMKukSBIP0JIiXCVJMgg1aO
         d0cZFeOZm0TfoJzOu/l+IZanofZUXTGF1i0pdU2gOL0kSHbWX8hBvwUSm1twfudhjeBv
         7/pG9bg91eFS7O9J1aiR06bi/yCS2NTFel7mpEuv22dENFe7HcaMuaLyz8Dil8IuTa2X
         uuevC8L28jlZvWQT9oOf/a35gUy5+5usRPsGnDCSLT+7adscWY9nZ01T9YPjeZFAGYP1
         G+ePp2tjhUTar3fQsjQyZDMCpkPNB57oyVoC1AiAR7BHNeTiW1g7rltBU/t3qb4Ltrwq
         3tUA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=IeufiVsA;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1711352989; x=1711957789; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=EWH7uB64nzr2wSk7sRLuPa7VxhZF26n3DIxk5I0FjQI=;
        b=MBvg4M5urNRb1iIAFj7LBd5NW6QqLbmWfuHjZQw+EdmxkHw2f5VJTooiBxxn8Oo4FA
         mTjnlXwWI+WANH1qJzcEJ9DZYltXyB1vyg5HjrT0KqefFy4mRKcoLspBU9hD1Px2xKaM
         1Sr4Q9WIHR3CvTdALe2eb5wBPRJCWbg5H1DB4F6FUOfnJjwqxeBYh1B9LTsBuFxA1gU/
         aQCeK0VrtC1E2HdtZek+QRnJPrB6j7w3qAtA28swikJXKc3Vwc4L7iDgtSUidmfpKuvw
         bMYKvFSCmHgQFhoi22nw3V8djw5OGhDHWzC5viiq0l+48rA4M4gTHwYdDgxrFL0ekBWQ
         ksjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711352989; x=1711957789;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :organization:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EWH7uB64nzr2wSk7sRLuPa7VxhZF26n3DIxk5I0FjQI=;
        b=gr6nCdXPn5IbVU3t2w5rv1OF7aG6tthng5EetRM8EcfHLgrp6pynWTeuYBbcKOhsl2
         PdOyIhUEuaPHzy9IPOX0H2BJmOD2YzMavi6mP8YCufmTbGJWs7IDct0VdyHt6sy8nJtX
         Ossfhp1On5DfSAQwHLJj7qUOIuUiLatrGJ/r1AttFQrCVGvkarlFuEvfsBMoW+vvAdjv
         Y27QbBE5i74ih+chsA7J/gXqXmm7WlNdmGB86GC6r467+Eiq3Anr+2v7mR3KLRDlBewE
         dckIMqufAsD4ONrMHiH2gPxbZh+AVPuR7vXn8ZPX6VQoNP+w6zAFTMH9VWT3aFJw75+z
         YkJg==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCX+38SHYQiZW/bOxKNfRocheOudLSJ8zRfm+tItqAYpWlBmigD7P3rVh3X7VynDvVM4VZ8jg8PNw9PLf9AwVXAvT796PZrrUGg=
X-Gm-Message-State: AOJu0YzLHQTd2KgTi4c8uFE2Gl7COQfnbgA/+qF4D67vkrZK/uD6bP1W
	4b1NHhJNNkbKIYm78unuLA6WcoHvH+5PRXrxkes6p1DzeA6smEJ7
X-Google-Smtp-Source: AGHT+IG6HY1apcNgLZcF1zqj9vWyEpaf4w6otd2NnPwyfxWWY+OJUrWpsno145yO8HT3QX1CNWstbw==
X-Received: by 2002:a05:6a00:880f:b0:6ea:aaf5:9d17 with SMTP id ho15-20020a056a00880f00b006eaaaf59d17mr1738840pfb.11.1711352989105;
        Mon, 25 Mar 2024 00:49:49 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6a00:8508:b0:6ea:8953:9625 with SMTP id
 ha8-20020a056a00850800b006ea89539625ls661396pfb.0.-pod-prod-01-us; Mon, 25
 Mar 2024 00:49:47 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCU6PzP8muWzSrVnrKC9ekfYd+jhLj7frGxluNbepWb6HJ3M18KynB7uwhhR6s4P/dVBZSaJBIvkdYtKXxz0oZxgXu2/C3H6UFjG8N0=
X-Received: by 2002:a05:6a20:8f0d:b0:1a3:6dbb:f06d with SMTP id b13-20020a056a208f0d00b001a36dbbf06dmr6561779pzk.9.1711352986825;
        Mon, 25 Mar 2024 00:49:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711352986; cv=none;
        d=google.com; s=arc-20160816;
        b=SmLcdf9y0dHqpxAIeJapXGtuqBXCdlFn7mBQAmZDCni8lNPnEgqfheClmWzcuuqR+8
         V3TVYcBN+826k3pP6b6oQ3PwVMaMEmyH4XAJPagPBQcGCEX9cWs86H52ph/9LQCqBGTU
         ps39mkKZjJkvgd4hVFvRYbnH7DKwyuurJwsdzUEoEWU8o52wjZzXBlKofDfrzo3Cn2RH
         giFEQRLG7IbKnxS9nCBd9htnW9VR2zUEoD+E/9qlfrcD60mqHxSUwn36Al8QjXso+geL
         DirLohwLION6f3GQa//mZP+j/f4zFpOhJS8RsvDMiVsgoMJM9NqwICCapCwHjKeQ0cKG
         ZApg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:dkim-signature;
        bh=e40gzKWQ7xUOKu7nUJHkyrD8AYoIRciYCQiK2DXthTc=;
        fh=42thyqLuX+U3R/biblipVYna9LUz9grvZASiaIDfzRc=;
        b=AtRrn91bvsXOtlu2EyFvq8tndnJNfsLpMr8ABDMPLI7bzE4uaxB3n0pAxdmKyK7edw
         F9L1GahXf/yB89qic7up3eFWO12h4eEBA/X1w40W604BFdeNxFVw0+zkiT7zj/x+P+LB
         LtL2V+JXgp7njJWK2AUdikbcS1MqnO2h2CYTyyRDpOq1Dcs+5Pb7Djy4DEpBRlcv8Io6
         I194JIM3SF8TgFcmMj/0M7ZEHdFoyaHhK5HH9hrTjqlOzL94xL+iSf8nFOl89gjzsxOq
         g+zIB0mQ9OnI8ORroF/90LkNbKhs3cYMCiSdH9VFjO89nCVlijhmGC+5TRMHLGXkM0g+
         7cwQ==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=IeufiVsA;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from sin.source.kernel.org (sin.source.kernel.org. [2604:1380:40e1:4800::1])
        by gmr-mx.google.com with ESMTPS id ld12-20020a170902facc00b001dd527af9fcsi299751plb.3.2024.03.25.00.49.46
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 00:49:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:40e1:4800::1 as permitted sender) client-ip=2604:1380:40e1:4800::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id B2F9BCE0FC5;
	Mon, 25 Mar 2024 07:49:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2F84EC433C7;
	Mon, 25 Mar 2024 07:49:37 +0000 (UTC)
Message-ID: <b1dba4fa-5a5d-443c-aae3-e8e5aea3eafe@kernel.org>
Date: Mon, 25 Mar 2024 16:49:36 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 18/23] sata_nv: switch to using ->device_configure
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
 <20240324235448.2039074-19-hch@lst.de>
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <20240324235448.2039074-19-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dlemoal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=IeufiVsA;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/b1dba4fa-5a5d-443c-aae3-e8e5aea3eafe%40kernel.org.
