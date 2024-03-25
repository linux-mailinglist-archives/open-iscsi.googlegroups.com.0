Return-Path: <open-iscsi+bncBDJNPU5KREFBBTOVQSYAMGQEPCS4BMQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id F2C5B8893F0
	for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 08:42:07 +0100 (CET)
Received: by mail-yb1-xb3e.google.com with SMTP id 3f1490d57ef6-dc64f63d768sf6861768276.2
        for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 00:42:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711352527; cv=pass;
        d=google.com; s=arc-20160816;
        b=jeRgIQmpnTiAcS77vyVGeH1/oNNw2tYT8vYdkmV+EG61GbD3zCPxLOk2arxtvV2Wgy
         Vqbo5ozWHrpQKMpN5tATJHK7EChNUk+epYmbeooKWZOmZr3YLr0/iUE/6fZV9aTfq13D
         GHa4T3mby3DNY4i7bLQN5zCatCzkt+P1KMCKWxyxAoy88b4KZjrWnxdlLrdbLD0EpuP1
         IlaFM0DR0CDYDI/SeZSvACEXaELThA3zxfEvjXcFx7vkcJp4TmeB6eYqeg8c9yim+spY
         vbe1ftckArWe2Oz/FnMRjirAHAEsuQ9VjzJ+QdC2smr9JNb3hMhuJxDrRE/acwF9HUxj
         8ofQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:in-reply-to:organization:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=zpN4qiZXf+LouaWZ6euou0CNJOfFGEF0yBa7Ecjh6gk=;
        fh=isisqAvrFTI9KtUrFFf0UTiOFYH8vOslMdMvySErCjU=;
        b=mhmEuk+EB1DcgoAICzvcn5E2J95vogOio/wfrFteYdLTWNcQx58D5DINJ/kmpMHyqH
         DLmq9x/BvDj6lid6lHm3ePhS1InPSKv296gCDD0Pv80v6esjmK8p6viwI5gCS1EPgFop
         f1QbQm55lSdJjF/XmGcEBBBivYhzB3noVROsBsvuUD+PztaZpRb6HwIt/YQDADJheJ+G
         mT3iLaQAv6b6AP49pTBFz9FhGrIJOuEQRtZVgvhErorQHOS0EFrf1vEAPeFgBZ8AwSJc
         21D1qWREtXudehVpPOyGfI/FKqc/dCiQCH2cYUgPpl/AAjuqbgWMnua85C11Xgswd7+R
         guKA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=QD2XDsoQ;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1711352527; x=1711957327; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=zpN4qiZXf+LouaWZ6euou0CNJOfFGEF0yBa7Ecjh6gk=;
        b=KWu0NDOiABf3j6uKwhtQkvEF4s19WZ2nbxkk1YLVubRuWvCugHo4iM0RZEtnHjq41J
         txFX5hSpk+pzzYYtDkJKegrd3t89Ift0gj8XpmuEpbdkpUBIs9GNzeXzn3dr/9P677ne
         BxnTz9m+jVwR3DGtVn3TPInWv22pi+nmtdazDtQFKjuf8ezw81KB0NYOMcmaoFbVOUnq
         DWt5KMNnr69SUOEHWvKEM1rJK3tkERTape1jQqt17KLSC7ABBgV6gWNWMoCsT7hn5xvu
         O5i/GOJKHa/ZG7RCqiNzTKvM0HERmgfEe+fAHFZv0EU8i7GaAcRM0mantNbnqds5+Ei7
         I2Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711352527; x=1711957327;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :organization:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zpN4qiZXf+LouaWZ6euou0CNJOfFGEF0yBa7Ecjh6gk=;
        b=Fhbl1akq+BfRFnKGhIski358DA1qNTh9+OqXjl1Z+VLYYgMdZpWPMp1vU6DJzv2Ifx
         46WV5YF7x67OOrWu2joWjfrCuBbYJBS5cj/znd0VE/w4px9r7SCCPKJdCSgK1/GoYvtg
         mbkvGYAuM4wcLTgLQEbw6vx8nxL4noL2Q0EuO6S9RQBMbijHfYymB/hxNWoEFvXOwTly
         A5lDOzBqlulL+0hTbHFdF5Cx4UscXSVi4ULUe5G8vAxvDc1FvOnoJHW+7m0zlMegIKrg
         5cXffHlNDtJt3VOkljhjRkTTf6Xksba98+MYvNnyDxyNNuoApzgtU777QXiH+XwEx14q
         HdEw==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCVil18nFvX2k6xCYrasdtfvRsXOVYnd/MiDXIyiB0A31zRTb3uMQapxKl5/eUyTuMZQj4r/zNN8rtsSt65s1CbnxH32jFv2dpo=
X-Gm-Message-State: AOJu0YwFH742dkdNDLQ9bhwrjlniR27xIZki7KfLWvyMK4I4MLMLUrPk
	rKp2wftiXH6VB6fnRZLv28AapEeLo7KYYb/b1qYRfhtSAL7fLale
X-Google-Smtp-Source: AGHT+IEjBdNikCooJN839g7jPSBaxH2YGjlr5NnS4/auU0l/72I2GFalOnss8DxWy3F3ft7eorJtUQ==
X-Received: by 2002:a25:8a10:0:b0:dc6:d738:1fa6 with SMTP id g16-20020a258a10000000b00dc6d7381fa6mr4128482ybl.6.1711352526958;
        Mon, 25 Mar 2024 00:42:06 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a25:df97:0:b0:dcb:bfe0:81b8 with SMTP id w145-20020a25df97000000b00dcbbfe081b8ls2741355ybg.0.-pod-prod-09-us;
 Mon, 25 Mar 2024 00:42:05 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVHzmCZlc5dYNsHTW13IwB83vpxt2tWrntjnpKGo1ULIq6L32G6H57M7Q3dLm+q5rEw7e6rb5id3ywqUdZiYgAcYYqHBDU8NLSCqiQ=
X-Received: by 2002:a25:3607:0:b0:dcd:1b8f:e6d3 with SMTP id d7-20020a253607000000b00dcd1b8fe6d3mr4730461yba.48.1711352524986;
        Mon, 25 Mar 2024 00:42:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711352524; cv=none;
        d=google.com; s=arc-20160816;
        b=GagTTnHCfxjPCOYFh3yuHyCaFgdkceEgaTQegGUhIroIm5XdsST6vLBcjVzLaDwmf5
         fCJyxaP2VR5+C1Xid3omtwtxJlamiOYoazZj1EgjB2tVzbX6xhgqJt33Ybmi3fuDsU4O
         FSFaYXId529IzPo33/65HOO49BtybLBzbZHAJTb4o5LzyZ9ZwFaZg6FWjUIKe+HMpczk
         fWmD8Jl5Ud0dnru+xO4xrSk9plsuBPzR6qVXHlpzzzSNfUqVRGjmY8DyQ/EpMZ9doR/j
         0lO/aGvw+0M2oVVPLuJYSdcYFkMNf/n8rRJWClRQr7xgOK+e/vS/s0HpVXFPSOCslQEH
         AoxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:dkim-signature;
        bh=kIAl4YRWMXh2yS4682/W0TMipGEqDQQu3UHCkJvJ6X4=;
        fh=42thyqLuX+U3R/biblipVYna9LUz9grvZASiaIDfzRc=;
        b=RDXPWiKfDBxe7jum1sMjcJzvLntJSSysyfLxdb1cdJW4iNndafhrQGUQYa8hy+bMrn
         NWLMKz9IOsKsVgnm1Heu842FoFRueVzuWzqvAIPOPqv0VDBQxqB3ise1xLrzo8BNeBFv
         1MJLLzdqknTNB1brZ6cymeXGcgkkdDF+hRJ6gjvOzc2xIJc8m4NWw4khFcu6cGgOFoKh
         PZlWeaMWmt0HXiON9VB/sqH70+TH8wAsBk8bdRK8mqmObrDxgq/F9qeV+hsaiPzBZpSm
         RcEEjtiUxvW8ONCY3lJICxZERbur1jKMj569XFvMFTDTovjwVp77hDpRUNJ/rgvVp92k
         N2/g==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=QD2XDsoQ;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from sin.source.kernel.org (sin.source.kernel.org. [145.40.73.55])
        by gmr-mx.google.com with ESMTPS id m71-20020a25264a000000b00dcd2dd6bba7si442880ybm.1.2024.03.25.00.42.04
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 00:42:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of dlemoal@kernel.org designates 145.40.73.55 as permitted sender) client-ip=145.40.73.55;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 39895CE1056;
	Mon, 25 Mar 2024 07:42:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7E3A3C433C7;
	Mon, 25 Mar 2024 07:41:55 +0000 (UTC)
Message-ID: <794533b4-19d7-4682-ad5f-9b19568420c3@kernel.org>
Date: Mon, 25 Mar 2024 16:41:55 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 13/23] sbp2: switch to using ->device_configure
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
 <20240324235448.2039074-14-hch@lst.de>
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <20240324235448.2039074-14-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dlemoal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=QD2XDsoQ;       spf=pass
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

Reviewed-by: Damien Le Moal <dlemoal@kernel.org>

-- 
Damien Le Moal
Western Digital Research

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/794533b4-19d7-4682-ad5f-9b19568420c3%40kernel.org.
