Return-Path: <open-iscsi+bncBDJNPU5KREFBBU6QQSYAMGQEXIKH6DI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F57188938D
	for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 08:31:34 +0100 (CET)
Received: by mail-io1-xd3e.google.com with SMTP id ca18e2360f4ac-7cc764c885bsf455462139f.3
        for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 00:31:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711351893; cv=pass;
        d=google.com; s=arc-20160816;
        b=XZ96/1NZ0LpUe7BTkVO8zyGsqhewj7C24jE6cBegaTKSYiSTV0jetr1Z89NK3GsIEC
         +/Uq3riUy2Y8RWrRPncekcxlD0wqesl7/kPywC6cUK5KqVOE6Cd7hRvjPrplQfck46RV
         XqVokG3KJG2YDnRszl9ORPSbr9XWgAz8soIOWM8ndKabKr/s162y1kkapaKd4Ea7DSUT
         JRzOPcI8o7mPj2naZCm+LF1yX+XK71xjs6dySr8LY0BU2QkdLx84IDZAu7GEDwS8TLPg
         ZpF62tcd1zLKu7y4WZVIGHhkHMzhObg310vOoiK7vmGZsfnvtV3nkrKiKtu13YKzXbQy
         P0Rg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:in-reply-to:organization:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=GfxgRzHgt3etinloLNCD1c4dKLwsPioOA9nhgg8Et14=;
        fh=Fp9Ztq2I71v3tYmeehlddFPuSbKRaRsOOHgrilZHAoA=;
        b=DtHQZxvJBVP1q4DPazuiGJGpQ03RAAwrTsx7mUygWb+Lliswbvo9fRuoGTKoHLKTb1
         ABD/jiCx9Tcvl5rcanTZB8jOyBGRW+vXa9wVAHX6iUcJ2UweqqgQ1+pRdx2JtDA5EvG4
         MHjS6vJ+MbHPwu4HsBngED/RFxUpoGsB/FO6ThhbLYO+nMEr5iOZ4JlF0a9Zf8vMuVyU
         GquBOgJAehBtirQq50cvjCGnWABHzVQ3iv5nFR0I60nbKR4xjSyOkeY6PnusZ2jZVUHa
         P5RVsMAunMkP8v4a0ZLLqzrbH36mkVyaLWoZ//B85Lpq6rPJg3yKTlsGvYkhlUYeng+u
         mn5Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=RM4sFH01;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1711351893; x=1711956693; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=GfxgRzHgt3etinloLNCD1c4dKLwsPioOA9nhgg8Et14=;
        b=JMRi/VZToijCP0oHxwTprmJXAEbnQoM22zwYuZtP0CnPYSRWzoVhmdkz9FwD3MeowH
         EdL8JeS8FBnitolrMX4kr80/RjlpVY59ooDskJnCLz6Y+OhL5jkJm3+X3zyaLkQ32ptT
         LxyOCqXKzHtb8GmgkuuOQUdMYC47l7DCBiO/3ND4mjqWtXcTtLYGFAPZXD4Lp7kEjzxQ
         hslwVvpr42Zlns9TbuHzwLo8Yrc8ghx3lhTuYmswpWiYWy59/TaoVxsXXzf1vPwsvsML
         9MVsuYqyRQZwD2R7HxhMJoY63E6cJNJXfp1YVpWBUDJxHrt573zw2G624C8aJoUb1Oqh
         3vgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711351893; x=1711956693;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :organization:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GfxgRzHgt3etinloLNCD1c4dKLwsPioOA9nhgg8Et14=;
        b=d3NtdneLd4GpW6s9M1X/WM8aGDMHVCiN87v9rB5RMcCHyfVt+rNGsGyEO2zdHGBdRE
         DWjp25naMGoVSgnh4EzdC9qh4yqJWKUlVLdoAxkolrN6pmgzC9N+0LteoQcrsI8ECfam
         eKlLg41pQ3XRmzqZvn6AjpfE9bGC1z+FBIJj3Tf3ynTNSUFMRzDJKiCmt7wBvQBI9UOk
         VFOskyaI7G4GiUon/dftKAF3eWdEEhmaXeK+Utg2PYoBqbUiaUMQMFbrs0pOCJj/ik7d
         X1dJ4g160CkIH9jo6ApOlJDCTt8WGzS5KCPqHElUCu59/tk3rRK+wGB3MUq5XHcV44eK
         q8OA==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCX911dzUQhqE5vgQg5Y4j/fzRNnuGzEJlxFEdgRxCJAFJ/MIur1sy86hIWJNpRG6+drMGQSSMgfZxxQXGItmI4Mlmsz6pkeHpM=
X-Gm-Message-State: AOJu0YzdwRabq35DcSXwz0oY6UPyD0USVDdmyd7vARHsM2JYmioq/hE4
	/BzLCD3R8jppFgx5ro7yNBTjzHuVtKejivlmcOAa2V3Bc1cmxgwk
X-Google-Smtp-Source: AGHT+IHj3D8by13EjXuRRcZYdWZfF0RJms7M9nHTv0FxbG8bxCQ7BLJu6qD05IdJsGJC8l1q+DiyKw==
X-Received: by 2002:a05:6e02:1d9e:b0:366:bcbd:ed84 with SMTP id h30-20020a056e021d9e00b00366bcbded84mr8538936ila.15.1711351892845;
        Mon, 25 Mar 2024 00:31:32 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6e02:1a87:b0:366:af4e:9df4 with SMTP id
 k7-20020a056e021a8700b00366af4e9df4ls2732005ilv.0.-pod-prod-03-us; Mon, 25
 Mar 2024 00:31:31 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUKKuN6CxAEpzcw7H2u/IWFq7VsyczqoqZbSgQjNnCveV/V+KV/9gNoqQNxhXml3jdloBgyf9MXy18jJ3P231Clti8fRxv675EP6Gg=
X-Received: by 2002:a05:6e02:1c26:b0:368:96d2:7cdc with SMTP id m6-20020a056e021c2600b0036896d27cdcmr645470ilh.10.1711351891311;
        Mon, 25 Mar 2024 00:31:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711351891; cv=none;
        d=google.com; s=arc-20160816;
        b=lBm3UUkJv98XYBYkJx5qQ/Cnsb59zYeC8/gq1wLwwQl0cNDZ+88I0hpKnlpY2u7mYW
         uecCtFlP0IR17EZF736s0gN2Ly0SDTXwlfXyJTIgNIF6l9D/OMHsSRPlOmWb3NVNORx/
         8gQZiN3aC2VLTWzaZpZ0c50MrisHTUwJXkA87XmBgyo3hGCIZrE3YqfGGwt3vh7JAdA2
         S4W83UvYwGg34jc8NeQXDEi/YrK4axxPdO7+wU/eSUpE2pJIz9AlECR+dPihNVTOOi41
         Z/HFftG2I1dEIiVNpYVE07YUNZJQwjitdE9WLCPtIssYHwLHOu5J4c8rfbsm+ubLp06f
         1EPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:dkim-signature;
        bh=eh7Hl6LQRiOjjb/MATGWxVsLLJgDy/tpMwxUGE23LZw=;
        fh=42thyqLuX+U3R/biblipVYna9LUz9grvZASiaIDfzRc=;
        b=uG5ef3vj+vKWFmpH2fTT6tb3avR/N5a7+mrJIOT6RYz4dVlBECUzakcVbDmaKxVkrl
         OHNoZsy7ZDYa73MvO/0YhlcP3vMO34wPcdWDv8bQuxsyfGoE/q1WJnsNnQaSKHcveII9
         oK4xQ1uN6I/YrhsG92H4paZK4rcLXsSBU6qYKBtkXtV9jltAnTz+DZUmBIofbjaXcfZH
         hWnCO62dddkfS6rUzyfrUs6lqQJB2yCPZhOpITbpvLvXPJME/faVFAj5AntyfyDEOuP+
         ZiavD1cRSpDJ/ixs9ZKD8S6DtBDeS1IG9UShS6V++3SMA0hT6ClWjPn3oO/fUv9mSR0p
         aDzQ==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=RM4sFH01;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from sin.source.kernel.org (sin.source.kernel.org. [2604:1380:40e1:4800::1])
        by gmr-mx.google.com with ESMTPS id b15-20020a92c56f000000b003688d2ffa46si129415ilj.3.2024.03.25.00.31.31
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 00:31:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:40e1:4800::1 as permitted sender) client-ip=2604:1380:40e1:4800::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id AA7B8CE104C;
	Mon, 25 Mar 2024 07:31:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E082FC433F1;
	Mon, 25 Mar 2024 07:31:22 +0000 (UTC)
Message-ID: <0fa3b0d9-d6a8-4427-80a3-616e54987a77@kernel.org>
Date: Mon, 25 Mar 2024 16:31:22 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 08/23] ufs-exynos: move setting the the dma alignment to
 the init method
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
 <20240324235448.2039074-9-hch@lst.de>
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <20240324235448.2039074-9-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dlemoal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=RM4sFH01;       spf=pass
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
> Use the SCSI host's dma_alignment field and set it in ->init and remove
> the now unused config_scsi_dev method.
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/0fa3b0d9-d6a8-4427-80a3-616e54987a77%40kernel.org.
