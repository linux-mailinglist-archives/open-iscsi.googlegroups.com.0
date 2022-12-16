Return-Path: <open-iscsi+bncBCK2XL5R4APRBHFU6COAMGQEOE2GXYA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x73f.google.com (mail-qk1-x73f.google.com [IPv6:2607:f8b0:4864:20::73f])
	by mail.lfdr.de (Postfix) with ESMTPS id CACEE64E79A
	for <lists+open-iscsi@lfdr.de>; Fri, 16 Dec 2022 08:11:26 +0100 (CET)
Received: by mail-qk1-x73f.google.com with SMTP id bi42-20020a05620a31aa00b006faaa1664b9sf1182261qkb.8
        for <lists+open-iscsi@lfdr.de>; Thu, 15 Dec 2022 23:11:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1671174685; cv=pass;
        d=google.com; s=arc-20160816;
        b=b6uILg2Amyh4S/fpFxnBiwn7cLJWzoEnOkQnloSRqGXLlzHO7iqJ/6G79EWimGin/4
         zoxHXeRf1oy4XJA5tKZyHC8XN1gmflUWJQBrpMbDrIWxisc9oWI62EsESfryzYYAatmb
         dzTuKHBOQIm1aNzIYJo1BsR+CLuTeXS92Tr+EEYN9IZlavI2ck2AibRETlvQxvTQo33p
         LsxnBG/cFy2iPY77ZKzu8DPzwzbFan01pTmWC5E7QjidKIA5VkSIddlABbFUmlVdvVkS
         Ph0Tp7onrrMTDxsTSzo4IX2xwaL4/IE3ov5t5awFOO5ue4jpYYm2gcxOmDN8BFy1BDur
         N28Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=0KI9xy4UzsTLAgOvIr6GONTYER/3vWYOb4Dx0UiIgaA=;
        b=vGr0gYg1JNCBVYhv1KjC+21pypfT0jXRQ956NiKOv41mIlpc6hKelSi33qPEdw7hvT
         d6sHUwlGBt8JQbWmgRE7IHuLziJeAv+GpY95yAl8ukL9p95D9/XIbDpoeeC1Lp1kf87c
         aswmDorxA/YE5FM6gOeg8i5jAoX9c5ExSf+B0mVTaYt8D8H6IUR26aR7ZqQGZpYLwqfR
         9LlRAW55IG2ESWa4OMhugIUqWjlD6X389MYKB6bE76LL+jIaQzPZFoGdmJzge6HVTJep
         luhuwQpVo/4fl5RPuW+c8SEz6Euqr6nqKypfbUcHrGTrDgzzhFS8BqJ0dco9PsanWM6L
         AFMg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=m0+OLoWt;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+296c1fbe19c453695b58+7054+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=0KI9xy4UzsTLAgOvIr6GONTYER/3vWYOb4Dx0UiIgaA=;
        b=Jv7UK7w7Bq/BLYdowVvx8mGUyePonF0DSnL6NRjU0PWtGWrSOTRIMihvstWlWQrNub
         Mlr2hJnB8JKtFmYfIsmZP2l4GhnSyXm1WOWpJg6G0FtTb46fzvierPe+n15Pueb7rHAc
         xZVTFBq/8nt5pRt4Go45PD0TzOu+FC2BSU+bvytuMdpNeX3/gv2iOR96tkdIoRdWBpTP
         9/nB74DoN1aFw3ARTHqgxDX2DaDQ2+PyY2m4IbsFqX0tXwYbCNDVgQmms3FZpCx8YgzH
         pHpAya3ZmlQhxfYFY61mOa4Dq0qWklffpnVcQuIA0clXSR+zAS+flNDkDOtTCzXwgLxp
         j7xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0KI9xy4UzsTLAgOvIr6GONTYER/3vWYOb4Dx0UiIgaA=;
        b=vW88zavg87mL6VozMEegwdkiuOKPqz6+mRb8mtvsj6P3Bv1SYhQFwErt9AbS0hwCrg
         /sjeAApyLNCINwr9EXnGaxB3+XCXupMdjk0qacpQD5Vc8ZoG7wRpaay3GwQAdE3eYV/X
         zs1Jp+oSMV90QTW+mDtC+oJQkrA79KcGT0U1mJ71nNR0SJjgkYn1MO2Y12ZKFlG4W9r1
         jbh5osAjAYCCbu8HpuJXUPbmKPyf90a6BxscFubrcyMFhiR2BuprX75MUOCUY9WQZ9cw
         3/dw8SMZZYEmdmc1fV9DWC94xkQULyMIEuq6y+4S7M2vaUPay/S3hMnnB0xR5mTG41Lk
         zxyA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANoB5pn12r1Trr8H4gs4UjxUXibfUKWKR5C8pmESMWnbO2BQc68LOIbK
	bw3jghfTzWWYUNWFwvnj/tY=
X-Google-Smtp-Source: AA0mqf7cFeSIIOc0kBY+WL03hXRQXfBcmyHfy7pkIYP0T3WI5ptt3xjBuhCjP/SaaGoBbQSsrRu7rg==
X-Received: by 2002:a0c:be90:0:b0:4bb:5ac4:1268 with SMTP id n16-20020a0cbe90000000b004bb5ac41268mr73281637qvi.24.1671174685570;
        Thu, 15 Dec 2022 23:11:25 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:622a:2512:b0:3a6:a289:7393 with SMTP id
 cm18-20020a05622a251200b003a6a2897393ls1307890qtb.11.-pod-prod-gmail; Thu, 15
 Dec 2022 23:11:24 -0800 (PST)
X-Received: by 2002:ac8:5ed5:0:b0:3a7:e809:1fe3 with SMTP id s21-20020ac85ed5000000b003a7e8091fe3mr39251599qtx.49.1671174684234;
        Thu, 15 Dec 2022 23:11:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1671174684; cv=none;
        d=google.com; s=arc-20160816;
        b=qCCnB55HMp2zADuGwLtoJJ+nAOQcY3OylR3CKdhf/60EpWhP4o1Ehf7wqc/Jc1qQUl
         oRDW06a9lhrBtZrOZqbGMYEnr4eq4cJNX4IqImXG2PgHVRrVwU+2jc5yI6adll76LhhQ
         4O+aSGf9xIwj5UfZRROKuyQn4hlHdu6sljXC/TSpM70pJz8N+THCRNKgOYY2T5xga9S8
         wvVBfoiLrbA3qzcAvjcjHZDCbZ8YLI692BeL0suIEN1CpKMVOR/4yRgovNcZ5uiOY7Pf
         BNq39VzpAILm3vLK7NU4kozveCCv75hJx/PiE0u0AH7GL5TKgchIj9+Bn7L9rQT919op
         R8PA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=rbdP76tLSLd0zXbJ7Ayy7yAOCBynRgWdD+HyAwvTvH4=;
        b=VrKhxIw3ROc9MmkG4Rkf3mzwHINJ6kKi9WULPi5kwK/OE8vEHbKeJNKNIW6VOYSoRe
         cJ8UQBqi/cnSd5+Z7kD5/TW4DGTTRP+e2Af0iYlBR+0snjJtf3+icqMRzGXjpGoKmKvQ
         sJKa19cbPRyRNz6V5UzHsJszxueKoN58NY2IEvJuPVtWicAT4mIy3rrYDyWoQjFUbi6o
         nGiXrE3InEw9oB0OhnpiIjPjNVZz/z0IUe4EbMzDRizkh8rhP/qnfiv3AY2nRTQnLHAA
         pS8NDfCx53Ch60Q4tV07tdmlLckQ5cVp09Q1PIqJ2ntuM6WY0qH479gZyJHjlQ2t4pUE
         VjzA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=m0+OLoWt;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+296c1fbe19c453695b58+7054+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by gmr-mx.google.com with ESMTPS id l25-20020ac84cd9000000b003a7fa08057asi69456qtv.1.2022.12.15.23.11.24
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Dec 2022 23:11:24 -0800 (PST)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from hch by bombadil.infradead.org with local (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p64sD-00DKqT-10; Fri, 16 Dec 2022 07:11:13 +0000
Date: Thu, 15 Dec 2022 23:11:13 -0800
From: Christoph Hellwig <hch@infradead.org>
To: Ulrich Windl <Ulrich.Windl@rz.uni-regensburg.de>
Cc: haowenchao@huawei.com, open-iscsi <open-iscsi@googlegroups.com>,
	linfeilong@huawei.com, liuzhiqiang26@huawei.com, jejb@linux.ibm.com,
	martin.petersen@oracle.com, michael.christie@oracle.com,
	Chris Leech <cleech@redhat.com>, Lee Duncan <lduncan@suse.com>,
	linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org
Subject: Re: Antw: [EXT] Re: [PATCH 0/2] scsi:donot skip lun if inquiry
 returns PQ=1 for all hosts
Message-ID: <Y5waEc0iqfGkkN7f@infradead.org>
References: <20221214070846.1808300-1-haowenchao@huawei.com>
 <Y5rHX95Vvl1aLhbp@infradead.org>
 <639AD5C0020000A100050749@gwsmtp.uni-regensburg.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <639AD5C0020000A100050749@gwsmtp.uni-regensburg.de>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=m0+OLoWt;
       spf=none (google.com: bombadil.srs.infradead.org does not designate
 permitted sender hosts) smtp.mailfrom=BATV+296c1fbe19c453695b58+7054+infradead.org+hch@bombadil.srs.infradead.org
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

On Thu, Dec 15, 2022 at 09:07:28AM +0100, Ulrich Windl wrote:
> Actusally I have no idea, but as a user of FC SAN systems I can remember a case when a storage system had to present a dummy LUN0 to enable hosts to find other LUNs (while LUN0 was never actually used). Maybe the client code was imperfect, I don't know.

Ignoring some of the well known LU bits that never really became
practically relevant, lun0 is needed to use the REPORT_LUNS command
to scane for the other logical units.  But unless the PQ says it
actually is a valid logic unit, we never add a sdev for it.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/Y5waEc0iqfGkkN7f%40infradead.org.
