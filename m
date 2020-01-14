Return-Path: <open-iscsi+bncBCUJ7YGL3QFBBXNR67YAKGQECY46HQA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 254AD13AD0F
	for <lists+open-iscsi@lfdr.de>; Tue, 14 Jan 2020 16:06:07 +0100 (CET)
Received: by mail-pl1-x63f.google.com with SMTP id x22sf5256775pll.1
        for <lists+open-iscsi@lfdr.de>; Tue, 14 Jan 2020 07:06:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579014365; cv=pass;
        d=google.com; s=arc-20160816;
        b=L7DRkRp44CSeVL063YktHVQky5bh4GOZ/fhZvHo4FxQFNFrwi21VJyvomPJtmRqZ2V
         zweP3FcxlUZ+4VoreCoGTOSOew6gohQ9Pury83lyBDSDRstujVIiZPLOcSDdpM5c+zCv
         MY6/CYREa5iVfwGyNwtio0YPwcy90vtv3LQRO6B7qMidzQfKutK3XrVLNyNux2xzGy8+
         9BBORTniXc5KE/xFqA2R/Hsm13VJkOjNYzTOevTml6REHc7dpyRFWSN9hjCBtGUSl6S9
         RWCjBzwTjU4Z29Mu1nurM6z8+darpwsiwG0Xn1eg7f4skMzoIdgRMANWFYbPS2zkz+PU
         GKbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=Vc5QOFlRoqcpwXNFbI2hKe6fcKuRVXxgZCpbLiA0YSY=;
        b=WYn91pP8xy/+qeGIf6Ulsk9CoVKpvhovNc6q2gsD7RDUcRBUs5tSmvNMxHZ//WPeIu
         6sBaQ5CEwTowhzl1YeWPD0ncJb8WOUwhCDtboEhVKS83L58lNfbnteBjmoIurfAqdPHM
         79wn0MJj7gOT3fK8cGaEr24QXELSRo+dnesBATQ/Ytp6lHbZCbGBDkKFaGcGeIE3JlUl
         Js0T4e0JqxZP28qTnZBhfyg589Jw393oEmNFs/PBUpE8VHf6UTBZw8xSBdPJzQOehrMe
         Rm54acJdgmyWCKKswwjyLeDeMuq78Ddyuy5gJwQM64kfSGK4f48cx9jVDHikrmtoeCte
         BnEA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="cewPS/kP";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Vc5QOFlRoqcpwXNFbI2hKe6fcKuRVXxgZCpbLiA0YSY=;
        b=MTvN//qyho3OtvhilcEUc38ln2XJQv7o2MTj5549EZfbYPtJWx1JhOp+RNBXfdTkmp
         1pg/ulhJEx5sAeEhJrQi2amquKYETZfICQeUsvIHDkUJcdewxnfPMJFwiYZYYJ1igiq/
         HAkvxYmaeNB9D81nvqvr2/uYQS4war2NGDwAb1IXH0KXIs5T6Kmxs9rs7OD1aFidthY4
         aTwEvfpLb71Bc4ei7FOUgJ2UPhy/j4QJ26nzOOTlRqmfXR6b4t1ulnfzfN0g4n6h0uHZ
         8MpswAaX7fL7mKqZ00YaQxQzm88FwKbh6a3c2fMKYgJ40owxe77BDiE315Cdc8x0+HPB
         nMvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Vc5QOFlRoqcpwXNFbI2hKe6fcKuRVXxgZCpbLiA0YSY=;
        b=Cr+1JqcU1Svswt6gSNSOhGlxaiuOScGqJviSBMMugnKeKBJfBWgolFKB7DPJ7DvL7z
         mHCc6OOxCPS07zEG9DdxoZ2NsUCy9D9IGwl6HIFS3CQxKSkLeYp2rAQUhTH6RFtf3hs8
         Dd9FRap4xiNIaiSJ/njIu0i8pG2EsNprzjTvvIhg0dC3ZkBsHPUm3NVf6JE6oP1hAVu4
         U5ePBi38qKmZFYxay7ajrDz95u5zH8NnkvjxFczzpnfQze7f8gZVv5CuyfQKHzW7biJx
         1zTeNh1XHH5zqI2dgvFxxuLlXJDPZSPc0xl9EZP1ImZjdEJqggsATlMwDuW6L775xrcB
         uYwA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAVnixPaf9ybbkTh6cvK4nWxjH2z3/Q72xbxtFITUBPjgP4ZXidY
	SZ41asq6xZ9D8kIWjz8P1AM=
X-Google-Smtp-Source: APXvYqxLk5/Y4WtcU/+GJaA9zWt1A/i0PcByGqbaXwRwZeVuaX3euIAPrfLhFNW92Imzmkp1qSHuXA==
X-Received: by 2002:a17:902:8f85:: with SMTP id z5mr20523674plo.43.1579014365515;
        Tue, 14 Jan 2020 07:06:05 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:902:8214:: with SMTP id x20ls4506336pln.15.gmail; Tue,
 14 Jan 2020 07:06:05 -0800 (PST)
X-Received: by 2002:a17:902:7b92:: with SMTP id w18mr3406804pll.72.1579014365110;
        Tue, 14 Jan 2020 07:06:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579014365; cv=none;
        d=google.com; s=arc-20160816;
        b=NViVtCAjAXSVvD3JS/e7uD1z2bYpN3M2cpl0RYr6UmszJutEB1p+Z5fWOk9Wo8m21R
         HX64qi5K5NS8cvLae9KK+kl13gMNfAMxQFj+BaYNLOWWnymajPEKjbIyAg8x+h3v3DKp
         0B1nAXUODs/qk97jCAe6xJypmZ6fDB40PIOknaWXMcGvotZyyeM9hu2FR1PqOcmnH4pa
         9GtEljKtqG9W/Xcg8h6OXkpDMvuFBreRw6JTqWMr/l9gTqO4FbP1XDhLM96Hc1gA9B0V
         B/QATNZ/HDtEy9t/TbxF9geAIVXO/rCTLbqDiHBM+HrMCwSb9C1XD1I/7tQYWZuwYBnF
         MosQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=sv4RncteUXVsAeByH4X+TRu9v9DSNGuGiJWkpae9f70=;
        b=hS/yaLreDw61pV5XlfnKT67Ko5k4jnXGNksZg1BNeJFBHcp2cHS3bdh7QpCe+YkwqG
         ibaU38U/4lVI+y/3sM0cg48CrFj3JANzm5mK8UXzIm7DbGL8Yk3dc7hD4TaxW53Ox09v
         V7WKB2zQYSK4y1LNh8Xdv0+QTW+m84I+r3M5WDyse7ue2ifC4MNVdA95Sq2lqEXDQ3j+
         kxG+f+C5YqDvX0PczmQ67Zcz2NRE5NiwGxEe4hFNPEG+ywv0l69CO5KU1W16mL+6DzrQ
         7Q36sya5SlaVZ7iVmNXOCjPjJWDR5sC0nusf2S+XBKqeqBtvdHBXQlyTc1s1yA7+Wqh2
         92NQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="cewPS/kP";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o9si791692pfp.0.2020.01.14.07.06.05
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Jan 2020 07:06:05 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 47311206D5;
	Tue, 14 Jan 2020 15:06:04 +0000 (UTC)
Date: Tue, 14 Jan 2020 16:06:02 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Gabriel Krisman Bertazi <krisman@collabora.com>
Cc: rafael@kernel.org, lduncan@suse.com, cleech@redhat.com,
	jejb@linux.ibm.com, martin.petersen@oracle.com,
	open-iscsi@googlegroups.com, linux-kernel@vger.kernel.org,
	linux-scsi@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCH 0/3] drivers base: transport component error propagation
Message-ID: <20200114150602.GC1975425@kroah.com>
References: <20200106185817.640331-1-krisman@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200106185817.640331-1-krisman@collabora.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="cewPS/kP";       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
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

On Mon, Jan 06, 2020 at 01:58:14PM -0500, Gabriel Krisman Bertazi wrote:
> Hi,
> 
> This small series improves error propagation on the transport component
> to prevent an inconsistent state in the iscsi module.  The bug that
> motivated this patch results in a hanging iscsi connection that cannot
> be used or removed by userspace, since the session is in an inconsistent
> state.
> 
> That said, I tested it using the TCP iscsi transport (and forcing errors
> on the triggered function), which doesn't require a particularly complex
> container structure, so it is not the best test for finding corner cases
> on the atomic attribute_container_device trigger version.
> 
> Please let me know what you think.

Looks sane, feel free to take the first two patches through what ever
tree iscsi patches go through.

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200114150602.GC1975425%40kroah.com.
