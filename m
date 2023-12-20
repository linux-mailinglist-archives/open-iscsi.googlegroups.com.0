Return-Path: <open-iscsi+bncBDQ2FCEAWYLRB55IRKWAMGQE2Q2ZCUY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CFE581992F
	for <lists+open-iscsi@lfdr.de>; Wed, 20 Dec 2023 08:15:07 +0100 (CET)
Received: by mail-pj1-x103c.google.com with SMTP id 98e67ed59e1d1-28b6d5de7f8sf1868968a91.0
        for <lists+open-iscsi@lfdr.de>; Tue, 19 Dec 2023 23:15:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1703056505; cv=pass;
        d=google.com; s=arc-20160816;
        b=V3cTVgQn2MOhEMeIPy78oAygs+6F+puve796tjZTyNBXrVrCZpQwWppfbOOEiql8xu
         zb9m7KJvd4qnvpFKmnb9R413hgsuWx+28jk2uNVgOZvdxN6MLnMFSeBaYEgOloJ/cQU1
         +cOtlw8LfVI6WFxnfKmc2A1Id2M+1U/3atkSyYPLIbJqWBkcFrbodQVsQdUQoLeqbaIV
         Idm6S4Q6NgPs40bfAVsGDFmA8yySA+a+scJMFLndtQTAsZpCZvZvyqn1qUz0ZLul3FM9
         AbiGg7wnRlrTOC79X908uvjevRLzFPv7gou/WMfKn9zxHEKasaWWofduaxIvHlpkZWn4
         1cPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Ql1kJhlc6IqTQ9zXgIAN6M2eIpKI+KkHcqOKu9djbd4=;
        fh=V4hDMxxFcU57KXCwYC5dQsYvr7pjJlwQZhaZyl0GgrI=;
        b=pl1/0QR1k7f82ETZTMlQNFJSxF6QWxKjHF0BaCTkAXIE9uMOKlRpqO8aFg/sV4qwUU
         +096xC80r1Q+FFm2bF5AvCsp4BM2gCP5irb8z04aqinTpKkKpfjtQlCcydVK1riDBakx
         9Vud40VsI1gUUoBm1Wp9Hv66FXRIKZ6nn2BSSj15+jUKGaCxyuS2jNlnnfOCNzwoEVQg
         pqyf44DlrzrMRlrKNAzVfqHepXCbZU/CIUx7MroQFuR6810zzlfLjzElJCFpZasx3HkT
         5q7Im/60XF5lVpZ4ZUIJv4xy6zcFbN3b3JskPCHwHoDIWKfNu5GGNTTqu4tAqJ+wmfy3
         lBDA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=l5N6uj4C;
       spf=pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=htejun@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703056505; x=1703661305; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ql1kJhlc6IqTQ9zXgIAN6M2eIpKI+KkHcqOKu9djbd4=;
        b=V84qVnOLv5GZcS1RB70AgiNAyoTz5IQ9cOCKu0e25pvXXNOXUdMteQFq5i7sVkYM5x
         pS8VlE6bYAvx0TDjP/R/MA3GSSnfaay97lnLuBViQ41DLCkKSd/IOKTH+yZ/zZNi90BM
         8IPYxGh2wXeTEYZi4WzTQ4SPa3y9f5jkypp+gWFKYQ1kHaR3wDVqeYUfq15PgaFpjM35
         nH2146tAjjI7wbSEeuT5AYJqsraVpGjeD0iIjg1at6QtrDNOXVX4++vH4RcMOkigHk13
         xLWQIIpWz9IsQnInc8Ie6sG9u22hVStQU59ANf3b3K7b3UpJ+M2JjIYAPtYhCZsohio/
         O5SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703056505; x=1703661305;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ql1kJhlc6IqTQ9zXgIAN6M2eIpKI+KkHcqOKu9djbd4=;
        b=KLt7eLmaJpdjqAJTfv4VGSy/4pct5l2CsP6aQ0A6ScnXLPpWzNodHKqaF9P9zFVNC+
         YVC24nrpq8Zl+MXbzjlmwWrWPPh/jZv9qegziZ2eRLxA2+hXGMtihVL9X47oKX3kPEkZ
         q18R5keMu8KHUVn+hTPjJ5ea94FwPE/213myklZgnDJi0Rot/CUN6irujx1imeEyVrJm
         UADCP0FrKUl6iP1nopVyY2OHPLQfkE4sBX1kHgTncPYMwAR6J07+IAZnRLY+oXdkCICC
         YyQBuN+87PNvv2w3bbUN3tXNI7spDXA5Xf0GldroO/VyExmk8ObbUYs8Lqzk00RV5X19
         aJjQ==
X-Gm-Message-State: AOJu0Yx8JJX8rAC2Vyc8ZDkvDW5KXuNKTZ04n81pFNsrh9jUOJA9XUKL
	hy5hovSG2KZzfiF8HHmeHHM=
X-Google-Smtp-Source: AGHT+IH/Sd7j4PwmAD12p8RBSKvHNge2/8O97aqqBUt71Yymg6CU+fnNOKEaL5XLh+oLl/LWYcs0zQ==
X-Received: by 2002:a17:90a:b118:b0:28b:2474:77c4 with SMTP id z24-20020a17090ab11800b0028b247477c4mr3834714pjq.87.1703056505376;
        Tue, 19 Dec 2023 23:15:05 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:90a:b310:b0:28b:d5d5:a2a4 with SMTP id
 d16-20020a17090ab31000b0028bd5d5a2a4ls54972pjr.1.-pod-prod-09-us; Tue, 19 Dec
 2023 23:15:02 -0800 (PST)
X-Received: by 2002:a17:90a:9081:b0:285:b876:5033 with SMTP id j1-20020a17090a908100b00285b8765033mr8859203pjo.49.1703056502072;
        Tue, 19 Dec 2023 23:15:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1703056502; cv=none;
        d=google.com; s=arc-20160816;
        b=DPM0RmyNI+4iCMAQixVQGl+PkN8aqnO2gPNhQgwkmq6b9fLdKCOCg4xaAqKQn+9YdN
         7yMHWLAYSE9le0441iQTQLn1PbMqQPHz98Xaf9ZWbdpGNQA6akfsqFD4gJsNCHrZnnnG
         jxuhlGZQgMdu8N1yv6dFo7NRjD0aHz2xpmd8KrkQKkcC3ngGeidznPc+6gxquerVfAKm
         +h0osz1kYaKUTUaDEVdqthIVPl2VS+1iSQ06qLrYz7gI9yPMZQgmZgzDdSSk4JQRmAal
         jLAA19nA1lgQgcuz6qMsgzEJFeEx77nWEhf0UgnmxElOADDgSqg2Di97Vf/IAcAQjRHF
         pvbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=eJqWdKRl0UBq0Wj+r8chL9QmhrnrulM60eoe1tH98KY=;
        fh=V4hDMxxFcU57KXCwYC5dQsYvr7pjJlwQZhaZyl0GgrI=;
        b=MbZWlqhJVHmo2ZoAeygJMLn6c+SuA6pD+RGSy9ogi+86XoBbblRXvoG+GYSEnuQkM1
         TGKuzH+kwPnfvuVl1heqmzJHjevfPn9fuTOM3YWSvZbHCWiRTYDJqkWxVLE64z9eGrJ9
         vnbMF+4YUuxpo6gCfnaz+7eTZ298aZIzhKAxr0pZxEFlkH4IAx0ilWifJCFUXuTyJdFH
         qtD0EBJLrm+vSHaihNSxrDiY8tr/xMYEliBqHG85zRHcRvIJjApXeU3YC5vEZ8TS+kub
         ij52MlifOIIz+WsIKhA1J62N4LdVKp2dLtGDs4SDJN7LEXZQI2m+bAWlAKm+/Yi4IPSL
         Wsgg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=l5N6uj4C;
       spf=pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=htejun@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com. [2607:f8b0:4864:20::631])
        by gmr-mx.google.com with ESMTPS id a8-20020a17090a6d8800b0028bc9da1651si57997pjk.1.2023.12.19.23.15.02
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Dec 2023 23:15:02 -0800 (PST)
Received-SPF: pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4864:20::631 as permitted sender) client-ip=2607:f8b0:4864:20::631;
Received: by mail-pl1-x631.google.com with SMTP id d9443c01a7336-1d3e2972f65so7024735ad.3
        for <open-iscsi@googlegroups.com>; Tue, 19 Dec 2023 23:15:02 -0800 (PST)
X-Received: by 2002:a17:903:947:b0:1d3:be34:7862 with SMTP id ma7-20020a170903094700b001d3be347862mr3583611plb.9.1703056501427;
        Tue, 19 Dec 2023 23:15:01 -0800 (PST)
Received: from localhost (dhcp-72-253-202-210.hawaiiantel.net. [72.253.202.210])
        by smtp.gmail.com with ESMTPSA id m2-20020a170902bb8200b001cfd2cb1907sm22210314pls.206.2023.12.19.23.15.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Dec 2023 23:15:00 -0800 (PST)
Sender: Tejun Heo <htejun@gmail.com>
Date: Tue, 19 Dec 2023 21:14:59 -1000
From: Tejun Heo <tj@kernel.org>
To: Naohiro Aota <Naohiro.Aota@wdc.com>
Cc: Lai Jiangshan <jiangshanlai@gmail.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-btrfs@vger.kernel.org" <linux-btrfs@vger.kernel.org>,
	"ceph-devel@vger.kernel.org" <ceph-devel@vger.kernel.org>,
	"cgroups@vger.kernel.org" <cgroups@vger.kernel.org>,
	"coreteam@netfilter.org" <coreteam@netfilter.org>,
	"dm-devel@lists.linux.dev" <dm-devel@lists.linux.dev>,
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
	"gfs2@lists.linux.dev" <gfs2@lists.linux.dev>,
	"intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
	"iommu@lists.linux.dev" <iommu@lists.linux.dev>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
	"linux-bcachefs@vger.kernel.org" <linux-bcachefs@vger.kernel.org>,
	"linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
	"linux-cachefs@redhat.com" <linux-cachefs@redhat.com>,
	"linux-cifs@vger.kernel.org" <linux-cifs@vger.kernel.org>,
	"linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>,
	"linux-erofs@lists.ozlabs.org" <linux-erofs@lists.ozlabs.org>,
	"linux-f2fs-devel@lists.sourceforge.net" <linux-f2fs-devel@lists.sourceforge.net>,
	"linux-fscrypt@vger.kernel.org" <linux-fscrypt@vger.kernel.org>,
	"linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
	"linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
	"linux-mm@kvack.org" <linux-mm@kvack.org>,
	"linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
	"linux-nfs@vger.kernel.org" <linux-nfs@vger.kernel.org>,
	"linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
	"linux-raid@vger.kernel.org" <linux-raid@vger.kernel.org>,
	"linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
	"linux-remoteproc@vger.kernel.org" <linux-remoteproc@vger.kernel.org>,
	"linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
	"linux-trace-kernel@vger.kernel.org" <linux-trace-kernel@vger.kernel.org>,
	"linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
	"linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
	"linux-xfs@vger.kernel.org" <linux-xfs@vger.kernel.org>,
	"nbd@other.debian.org" <nbd@other.debian.org>,
	"netdev@vger.kernel.org" <netdev@vger.kernel.org>,
	"ntb@lists.linux.dev" <ntb@lists.linux.dev>,
	"open-iscsi@googlegroups.com" <open-iscsi@googlegroups.com>,
	"oss-drivers@corigine.com" <oss-drivers@corigine.com>,
	"platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>,
	"samba-technical@lists.samba.org" <samba-technical@lists.samba.org>,
	"target-devel@vger.kernel.org" <target-devel@vger.kernel.org>,
	"virtualization@lists.linux.dev" <virtualization@lists.linux.dev>,
	"wireguard@lists.zx2c4.com" <wireguard@lists.zx2c4.com>
Subject: Re: Performance drop due to alloc_workqueue() misuse and recent
 change
Message-ID: <ZYKUc7MUGvre2lGQ@slm.duckdns.org>
References: <dbu6wiwu3sdhmhikb2w6lns7b27gbobfavhjj57kwi2quafgwl@htjcc5oikcr3>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <dbu6wiwu3sdhmhikb2w6lns7b27gbobfavhjj57kwi2quafgwl@htjcc5oikcr3>
X-Original-Sender: tj@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=l5N6uj4C;       spf=pass
 (google.com: domain of htejun@gmail.com designates 2607:f8b0:4864:20::631 as
 permitted sender) smtp.mailfrom=htejun@gmail.com;       dmarc=fail (p=NONE
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

Hello, again.

On Mon, Dec 04, 2023 at 04:03:47PM +0000, Naohiro Aota wrote:
...
> In summary, we misuse max_active, considering it is a global limit. And,
> the recent commit introduced a huge performance drop in some cases.  We
> need to review alloc_workqueue() usage to check if its max_active setting
> is proper or not.

Can you please test the following branch?

 https://git.kernel.org/pub/scm/linux/kernel/git/tj/wq.git unbound-system-wide-max_active

Thanks.

-- 
tejun

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/ZYKUc7MUGvre2lGQ%40slm.duckdns.org.
