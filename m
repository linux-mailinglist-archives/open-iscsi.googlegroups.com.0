Return-Path: <open-iscsi+bncBCK2XL5R4APRBVU6S6OQMGQEP3537LI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-vk1-xa39.google.com (mail-vk1-xa39.google.com [IPv6:2607:f8b0:4864:20::a39])
	by mail.lfdr.de (Postfix) with ESMTPS id 75597655278
	for <lists+open-iscsi@lfdr.de>; Fri, 23 Dec 2022 16:55:05 +0100 (CET)
Received: by mail-vk1-xa39.google.com with SMTP id c17-20020a1f1c11000000b003d3043bb363sf1661455vkc.18
        for <lists+open-iscsi@lfdr.de>; Fri, 23 Dec 2022 07:55:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1671810904; cv=pass;
        d=google.com; s=arc-20160816;
        b=NSdEJzOmO6QNsMy5Ozm+DvxkAvbQlFoyn2jqSSL4dDvnRAjybC9rRo3DonmXphkk4J
         wo3ZoW4YPoFnfM81Z+9r1qm/ii3BGRWBgSlkMsNxf8QbUGzil/sLynlJOzs2Bt3tHO5I
         C3EY5urT+HCB5EXe3AA3OV6AihKpak1RZbLSNvtqhZHK6Zn8ouvvEg/qU8wE6Xrs8r+D
         Hnc776CwLmuZ9vxv9j7n8yPauHuUQ+UuG7oL2DEQTE3U8V+L8WxNY05V8uG2HXr2M5qi
         UJklQrMGWIETvWmpFM5aJPIPP0UgSILBTFoGzeaZL8Gi6N2wvxN/4x/pbWbqnWRTl0EI
         CQ0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=TqUwEPOfdAalruz16bJfl9dVa9w0bl815vEEM2kesp8=;
        b=ZwNTuE7ytZv4+vh4BphAM1tKL+RIlfojTcbmO6E/mfFQS1e5Rc8Qu/+dAC0tvGHZa4
         JE2QgxfCvOGD0xqmJH67DuLRKFsHahv8Bl5G03ew+QWe1/AyE14aGFeisJ39ZZONZ2th
         60Rg1O2/iuvvgPgProd3fMTiKJL7EpFNgKd50z5fw4FiQH9WyeaJZc2eDbBY4tuw05rI
         LPp4YT3Gwg7XkrimItq2rBLIFzhLvjHsRbl2I5t3UQRkFchlESKglG6J+canFVQzHGq4
         dv/QU5Rl5yEIoECWD3Uvm8QTo0AXiF3Yko28+zGpwx+MWtsQDtFb0A2YglAiDEh93Qix
         xWxw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=uRAoWlvt;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+a36cbb7ae26730e9169d+7061+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=TqUwEPOfdAalruz16bJfl9dVa9w0bl815vEEM2kesp8=;
        b=g7+N8ky/mJ2CFQlQJ2vDsL1LzytG9mSsuwprZPKEkQJ/79kYSsivU/N25VN/BFmBfr
         GuRvgvBLyyFIdDqp3umLap1DCNzqk4ez2rPtjpr8idVAxNWQRJC2PwbWG07McqQgA/kX
         oPxuByUpGy5mfl/BHCtAxnX7bCUAUQBEIMQYxEHQ+tfbpMNQ+aCqOFno7Ppb9KnzPg9T
         BjWOC0eRQArvxJv9eMW7UGf8gXfMUfX46vioMG64rElw0W1+8Ma21NJgjoBI+sV/VlKA
         OF7nOKxGwV8v3w5/5nqtsGr4Uur4pi15gS4pF49Et5UcsZOc+a6YkJtcqaenkgjL5iXW
         cs0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TqUwEPOfdAalruz16bJfl9dVa9w0bl815vEEM2kesp8=;
        b=v0y198L6D3M43jgdQj4f/ANNDDcx0XTblMWjmYPksXm8e5/N6UxMbEIuLKI0omhG00
         64KcXuSHDet+PRc5K0aP6zyVZkKE9oi1YcfCUuwUAPi9Uvmd2o2WSS+R/D78Mczn+Y4h
         PPwoEf0DqKR+GDiw5n7Kqzkc1UmQ84Ji8Gq39B8de8cQHKcuzmh6ahLB6fEnLgcTmXxy
         vc4Tu1lm1ThGrP0Wd1PnfY49YazvdzG99xA1weGsfOVdyHf6HiJJeDM2Doa15pFvX1CW
         AjqWU//7DD/FTtYaMnfAAjjL0a0ydPn5608Tgp3frfi4gFg4HXDOrgH4W5tIf+nVaZGN
         jckw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AFqh2kpAgYPdO9+JWlutETLAmaXFx1HEucBLANWTzl8JzjRViL6SzHaG
	38IlFXfFrP+B/sZ78e8l+vE=
X-Google-Smtp-Source: AMrXdXsQlh4dghFxGFxTd0UwAKFQ3e3VxHRdn2wuMqXYIjpb40ue+xRSeca94VIDuavWSAVNW933xA==
X-Received: by 2002:a67:e20c:0:b0:3aa:887c:722c with SMTP id g12-20020a67e20c000000b003aa887c722cmr1009750vsa.74.1671810904202;
        Fri, 23 Dec 2022 07:55:04 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a1f:b256:0:b0:3c6:6b56:89bd with SMTP id b83-20020a1fb256000000b003c66b5689bdls730983vkf.8.-pod-prod-gmail;
 Fri, 23 Dec 2022 07:55:02 -0800 (PST)
X-Received: by 2002:a1f:2942:0:b0:3be:2175:a7f2 with SMTP id p63-20020a1f2942000000b003be2175a7f2mr3648571vkp.11.1671810902480;
        Fri, 23 Dec 2022 07:55:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1671810902; cv=none;
        d=google.com; s=arc-20160816;
        b=QyWrYJqf4850I+WYyjigeQ+i9IAV/d9kqqhtH1X4fZl7ARzT/BY+O8gErwzProoa1B
         GrfVT5ahQpGmshQXHkibrBGb2njqFx7GjcKd1bSCB2/jT04M5TT/ZaRvqX+ks+t6jjQS
         zOg7KpdnCr/6RQBUR1SMXDvvqiT5aK7ikBeE1Fabj1LuLvIx6avcFUDR0xskzfdXl7b+
         06Hlrf5ttzC8ddpmCmXh/u+MUyCkshcHlVuef2NfH0aYdVhAogwxhb+LuHI8BfZD6HaX
         DspQHLmhABPla64Iu/v7AD0ewuc0tiTP7m+D7J5Z1cHNZ/+jRjQPojvRfw0jjfRHqO0J
         FINA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=XlaGZY8DMBQJstKTpQhCotmCLDPFAe/nfsCTint1ghw=;
        b=j+qHf7UN29XO9IxNzsk+nRrnTdUiXf2IyqXWazffJWXizJt/cMCDjArgKvIUuLK/9k
         lqmxGV0a0uHhZsZocJe5GvRdFc9mzeNpwj7LLZU0Eob7P0C/NUAbwDc2c5L11OvFclgW
         Tmk8M2ykGF7m/mrDQiqF2AnSOKogK54sBg4cthc4EuV1z4EFn+yZPwLSOJghok5Xkt5l
         aEXfvz8zP5ApxBhFaOlAWobTuoPP0m2SIPSOhZTtQI8Mq4r6urMca2GCbUpW2gpPUCSg
         qG64cGiLP5YFhAwdmaBcAiY4RKZO+qgWQ5xRMv+Aq/VdXWu+bWxyZy5RtTjvMWnITR2Y
         Xu8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=uRAoWlvt;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+a36cbb7ae26730e9169d+7061+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by gmr-mx.google.com with ESMTPS id t196-20020a1f2dcd000000b003bca02ac77asi269048vkt.2.2022.12.23.07.55.02
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Dec 2022 07:55:02 -0800 (PST)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from hch by bombadil.infradead.org with local (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8kNh-009gH5-SN; Fri, 23 Dec 2022 15:54:45 +0000
Date: Fri, 23 Dec 2022 07:54:45 -0800
From: Christoph Hellwig <hch@infradead.org>
To: Wenchao Hao <haowenchao@huawei.com>
Cc: Christoph Hellwig <hch@infradead.org>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Mike Christie <michael.christie@oracle.com>,
	"James E . J . Bottomley" <jejb@linux.ibm.com>,
	Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
	open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org,
	linux-kernel@vger.kernel.org, liuzhiqiang26@huawei.com,
	linfeilong@huawei.com
Subject: Re: [PATCH 0/2] scsi:donot skip lun if inquiry returns PQ=1 for all
 hosts
Message-ID: <Y6XPRfgLSUShN+mY@infradead.org>
References: <20221214070846.1808300-1-haowenchao@huawei.com>
 <Y5rHX95Vvl1aLhbp@infradead.org>
 <57c12317-c229-8cbe-b3d2-d799ea5f554c@huawei.com>
 <Y5waet8RoXKQHDR7@infradead.org>
 <5129c84b-38e5-8be4-6411-fcc003776d70@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <5129c84b-38e5-8be4-6411-fcc003776d70@huawei.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=uRAoWlvt;
       spf=none (google.com: bombadil.srs.infradead.org does not designate
 permitted sender hosts) smtp.mailfrom=BATV+a36cbb7ae26730e9169d+7061+infradead.org+hch@bombadil.srs.infradead.org
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

On Fri, Dec 16, 2022 at 07:41:26PM +0800, Wenchao Hao wrote:
> For nothing, I want the iscsi_tcp transport do not skip PQ=1 default
> as what it did before commit 948e922fc4461 ("scsi: core: map PQ=1,
> PDT=other values to SCSI_SCAN_TARGET_PRESENT").

Well, that commit was very much intentional and is now three an a half
years old, so we've not just going to partially revert it on a
per-transport basis when it is in no way transport related.

If you can come up with a good enough rationale we could do the
sysfs override, but so far the reason mostly seems to be "I want"
and not anctual explanation of why it is useful.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/Y6XPRfgLSUShN%2BmY%40infradead.org.
