Return-Path: <open-iscsi+bncBCK2XL5R4APRBBNV6COAMGQERV3KDNA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yw1-x1140.google.com (mail-yw1-x1140.google.com [IPv6:2607:f8b0:4864:20::1140])
	by mail.lfdr.de (Postfix) with ESMTPS id 3563F64E79B
	for <lists+open-iscsi@lfdr.de>; Fri, 16 Dec 2022 08:13:12 +0100 (CET)
Received: by mail-yw1-x1140.google.com with SMTP id 00721157ae682-349423f04dbsf19629467b3.13
        for <lists+open-iscsi@lfdr.de>; Thu, 15 Dec 2022 23:13:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1671174790; cv=pass;
        d=google.com; s=arc-20160816;
        b=XotNb2aNrqHqPLM2AoK7QbGtFNbRSqT9hUxbFcACjbLdqmT8VxASpzy+BvRyL6/wRb
         j7GQwvRHlDKQamoxdVuqA0uqg3Apy0j5PpJtJX8nTcQMHr+EaWDMUgRCdxK5U3GIApdP
         X0Bt3B9wI3zHZRf0ZFpFZevFkfJs2l+LnjihB2TgariyQSQ9HBC+gXC/+7/nHTLxYQPx
         k4h3gKutUIqReeRwqR3V/5pdGVVcYaQ52GiWkzkjGCPnkuMUSuQXu+79DIVtQgWbt4nX
         2rDtb0c7jpS7YlOurn8JkrsQpHJscgkdCGwszJ9ZnYQoku4dd6aZkRjfelaDxFjh0IWD
         6XUQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=k0mPYARguNIN069IJdxN14NMHDi1OS9AzdqSPCuXs6w=;
        b=SMK9J1VOWIvSDIgy6bbX1l7WOjy/k1hK3vnBHKpHY73elupqk54E0WzmT5BnpEV6mc
         tMijVc0qg3hlie7fnUqlNLah3Ksae3nP+68hw2iafwbHLYQLzUbvnzUS9lLr19Vnzn+a
         99pyEIX4GxdYvHB8DhBggkIc4NtOWybPvAuX9383h8IqZCV2/ZaWsZyIfFz0P+9aVn4T
         I7lYqerXZVhJxgUqHRVT4CVS6GxmmZNGzxYC9+KEfO1tqw3Hw874HJfKwDdt/tpzIdR0
         bdxp7uLz47yfEc/A2Hrm/+yNkM1Tcvb6YbHewgEiq8ZXz9KSB2ya1rwHd3GK2/deKgrA
         9XYg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=b7yHcHD4;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+296c1fbe19c453695b58+7054+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=k0mPYARguNIN069IJdxN14NMHDi1OS9AzdqSPCuXs6w=;
        b=FB8ES5nBd/CR0fRwZOohpSw5thc80AmGwPlaobxqx6hVg0DwZeD6eg79hS8Q2rszeS
         OlZgogBwUtzuFJl+VzhLLXNp0Ju6aSXi1Cv7PBMVhpLJneFO0E3J/1GBhZiIibY+pZ0v
         ryyPIrB94GJQirM/aAjEWL8MLE8RUfph+6kNYzTc8HOKJmN8KCnmpQr7amq+MoTMtyzz
         H6ODF1K/QB7HQq7WszwO8ot9ftkXG+6zCU4VJhXhol/HCRXZi6o+n3zPP6daFlh6SoHr
         4wLdtdMnOas9Z+siKZcwg3IfASLSw/qDmXRZ4WMMmpZ3OAM5cYD0/iXDlQcOZBasu5Fu
         3C9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k0mPYARguNIN069IJdxN14NMHDi1OS9AzdqSPCuXs6w=;
        b=zDnqfbdu70QgrC8GtiImwQvN6+8/tmp4VIUhyASov2pXRhzLQUPkTwHWrlRMk1vPSr
         HxxT7GJ7hnfvW9YaTODiOm2c+NsYB+cJeyndFHpwmwVY3cf0uKYrj7uuPNdRme3Sn7VC
         PcaoPUwH1i85Vu8UEUiahF6TJ9rkCGPnktn0WGrY+WSCZRpeYQfjMYZ5eNQOxxu/QEuZ
         xquzy+wEr2NZ/hzVBVntHz1yOOAH4Q4rVB/ctsBgQ5jztHqY4ZOPadMNzvnavACADeq3
         jD6nDrRhXvQvGAWXMIoaYhysEw2Cr22IyAdJrYrqwslA6RHMENNOYJJwpeSA++dY4hLs
         JnuA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANoB5pnflovZpmUGiWCyrTRmJuu3S6UszTBvR80eo1IXgZkRkDBO9/gV
	+cdhMt3U+2tUafl43jJp8+o=
X-Google-Smtp-Source: AA0mqf5Urowz5r3Eolo7xZ2TOWghKBOdMYJi0vJtlX+gJHJijTiCoRa4J/gGWFrdurCb+HmdFaq/IA==
X-Received: by 2002:a25:ba92:0:b0:6d3:66bb:786b with SMTP id s18-20020a25ba92000000b006d366bb786bmr99466944ybg.459.1671174790675;
        Thu, 15 Dec 2022 23:13:10 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a25:b319:0:b0:6f1:cfad:b7bb with SMTP id l25-20020a25b319000000b006f1cfadb7bbls1042768ybj.7.-pod-prod-gmail;
 Thu, 15 Dec 2022 23:13:08 -0800 (PST)
X-Received: by 2002:a25:e08f:0:b0:6f0:6106:c551 with SMTP id x137-20020a25e08f000000b006f06106c551mr41501916ybg.17.1671174788821;
        Thu, 15 Dec 2022 23:13:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1671174788; cv=none;
        d=google.com; s=arc-20160816;
        b=xKUThI2gzLL11mVhE7VO63OtPME/CaZM8l8yCYDxOTnZiyEqeMGstClLc4v1NEVOgM
         9ktT0sIkq+rWXBtv8YN43LcHb8jdfyRbn3fgyVJ3NsUr4y+jIR8b8I3bQo8zRl5QBjzT
         RlXVOkZpbcFD5CDzl+RUurWUvRoH1QOHz+QlUpQa9CKxGTusBirWl3N2pdCkNigrOtRQ
         OXVfc8s8zivixaNdQSXxkp4CNVE09apZGT5yM0xbnCLbD+QaNr1oQSXEpIJREibuaPWA
         otT9YEgIiCXX6W19G7MlNzl0//H98nvNCGwj0Uhp1oAy1Wxd83kvm3sj+VSRsU9lsmu+
         I85A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=vqRMSpD1eVYXTGaFFnMc2dvCJYloydrqlHDvsUDDbr0=;
        b=gpXkquy5HMx7wI3cmv7b4g9qHFbRykKdRmlpajD/Xm83FMjB50FxdFYElQ5493/sYI
         PzIpuWaHfZaud6BwVM0iUYNmBqsdPc3No8fZ3OltKAjjl0fsVwTypm0UxRCTiETAucC6
         cgI1+4Ww3BBjt1wme5pIDpiLjz41qcDxy+FY/ql8rFPOLxP6Tj8E1Gesm9044LAyXzkQ
         Vu/qLZhLVlIC951PIClds4OaSOPlpREJoIETP4hrFHHb2LYcriQSpMzWU8OOKGtTP2Nr
         AH8bqXdaERo0bhgH+KYJXbVWPHJ81jbYmnJWsLqa4WEt/4MBJlFcSxurgGovgTpvVs4z
         Trqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=b7yHcHD4;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+296c1fbe19c453695b58+7054+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by gmr-mx.google.com with ESMTPS id o132-20020a25d78a000000b006d3034c7baesi122561ybg.3.2022.12.15.23.13.08
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Dec 2022 23:13:08 -0800 (PST)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from hch by bombadil.infradead.org with local (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p64tu-00DL2R-5w; Fri, 16 Dec 2022 07:12:58 +0000
Date: Thu, 15 Dec 2022 23:12:58 -0800
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
Message-ID: <Y5waet8RoXKQHDR7@infradead.org>
References: <20221214070846.1808300-1-haowenchao@huawei.com>
 <Y5rHX95Vvl1aLhbp@infradead.org>
 <57c12317-c229-8cbe-b3d2-d799ea5f554c@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <57c12317-c229-8cbe-b3d2-d799ea5f554c@huawei.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=b7yHcHD4;
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

On Thu, Dec 15, 2022 at 05:09:31PM +0800, Wenchao Hao wrote:
> In my opinion, if the addressed lun still response the
> inquiry and other commands, we should not skip it,
> maybe let the scsi drivers like sd/st/sg to determine
> how to handle this lun accordint to the PQ value.
> 
> As discussed in following mail, another drivers would
> be broken too.

So why do you force a specific behavior for iSCSI?

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/Y5waet8RoXKQHDR7%40infradead.org.
