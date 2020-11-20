Return-Path: <open-iscsi+bncBC6MFJWO34DBBSXZ3X6QKGQETGOAONA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ed1-x538.google.com (mail-ed1-x538.google.com [IPv6:2a00:1450:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id BB5D32BA488
	for <lists+open-iscsi@lfdr.de>; Fri, 20 Nov 2020 09:22:34 +0100 (CET)
Received: by mail-ed1-x538.google.com with SMTP id bt2sf3423424edb.12
        for <lists+open-iscsi@lfdr.de>; Fri, 20 Nov 2020 00:22:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605860554; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZVuZ2KAl+HzE1jPSkKHz3uavX9b0qXLJSEy8If03aGMfr9xMTAVYP7biHZGyMlfLul
         aw1Co7Dzh/7Na0CWftnL4T2zmuj9wW+cJRvE8zvN4E+embPoyIh2cTc9bcumIbj9Fogv
         oEcWwAXh8Srsc8Eiyt7W+Ci/kcJ50BGVeCBJ9ILnUvP1RcPNRvz3EfM8sWf0HrZ1nO/h
         662WL9btyt7llZmW0fZVuMw/mk+3LDU8erNSpkSLcQ0wIb6UK7SAEPXYOkwW0joSb+6I
         CZU4h8L7ywNWOWfHQzw8U7eldH8PBNg7rXZM9VeVLk45/ly2ukzSw2H0vy6kKEgPZb84
         gRVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-disposition
         :mime-version:in-reply-to:references:subject:to:from:date:message-id
         :sender:dkim-signature;
        bh=95YXPPzzSPtg7plZklTwZ0QTqy66xJGo/fF+/m6Eorg=;
        b=D82kDNIEGV6dAiHL6KIR8otyT8zkt7BCYH3EfHSB8Vsglzi2rNN2wSd/z0yMxGmHy1
         xndn04C4c88g9QjQ2n/u6YYp3pFWXl/1p+VA283ZTLqmBvawCD3KydFjwAdVO9zknAXo
         eXV0PG0WRLqd6wQGdhtH4LZB4Z7sjuZwvTsa3ysEa1Ae5Mia5pnEbXmbpzJ1yHxbowJi
         ujeMedQCNt5heuV/klKW1oGORVjsUeTVaLklOtqLaKMrVQI3PCJ8sBlthK3iiksnqHds
         q9PnEsen3FndItI68ns0bukQDXsOdgBU9yBsxjUZb/4JE8NUshz3LySiUKngYzIDdsmY
         biMQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:4:4e7a as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:from:to:subject:references:in-reply-to
         :mime-version:content-disposition:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=95YXPPzzSPtg7plZklTwZ0QTqy66xJGo/fF+/m6Eorg=;
        b=MO7Xk1kzX/VePPPAO0S0dHsQ5duzXqp2hENM3HS7NnpQ1O6GD8Yb7TglpyNx+MiK0R
         wj+qt6RXYZJUTFsEiLxfvk8llRSlk3s0B6quDuZeBlkHhfLVbx5Bql3OYUr6xFC7pLcn
         JJA8SDA5mmkVd9q+dughaajMi/FmHRjOxJ08wXU5mwqEqZWNx/e1m71gwTLwN3YluFeB
         LpsYeo8NCFKm53gztXsV34OqVSW+7sAikNKST3fIvE4k48Xoh1RLuUZ3yWtN6ROB1eii
         +H/SJfZmvOQvTA7/FrQN6E7L5Ar7HpVV7dijOoOuBF/y5vr2zcwwje8rrwhO1m2GDNuw
         TLQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:from:to:subject
         :references:in-reply-to:mime-version:content-disposition
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=95YXPPzzSPtg7plZklTwZ0QTqy66xJGo/fF+/m6Eorg=;
        b=IhPDrbA0TJ/afd6nhi2mohPvVBswpnxjz799May3QMj0YHoWJLgPBKqwJzQALqwGS5
         xbzlAcSV62LOTaHnrGcUqQDXGmb074Ybrl5h8ZJszyOnUp80XVpPfbq4eDglqilsBYqg
         sSskwalTtBnB7v8V/p/YbdbJ6wAQZFex/NC+y09sxRGCizO7gdKWC7hragpAgiTsbIsU
         eGtjWHMaX8HuiNr0v2zTu/q00WRPSP9MiP7/TzJInZjpW/r89VIImT/LGnfdT+MDTkx/
         XiaW50c6nM9pyPeZ1NlxXgSTFbqzFPQJcaOuBSD3MUPfHNsF5zqtjmrpPj4UyNZHXOIe
         xGtw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM5337GWoDY4HaiZaUXJBcfT9u9uUPQKLYMn8Tuz4qhDs04+Xktofg
	FLwUIefsff41usNtYU8qUeQ=
X-Google-Smtp-Source: ABdhPJzNF5XHoj0vZCUrK12Fh3Cnay0scxmDWbCBHX/sMrTCnT0yB71W7NfLlww4SSt/Un4EDuSksg==
X-Received: by 2002:a17:906:3114:: with SMTP id 20mr1032087ejx.460.1605860554440;
        Fri, 20 Nov 2020 00:22:34 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:906:b088:: with SMTP id x8ls2568476ejy.6.gmail; Fri, 20
 Nov 2020 00:22:33 -0800 (PST)
X-Received: by 2002:a17:906:757:: with SMTP id z23mr9478518ejb.259.1605860553494;
        Fri, 20 Nov 2020 00:22:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605860553; cv=none;
        d=google.com; s=arc-20160816;
        b=yqPlhKpw0yr4B0la+kIKipWdvJN7cPVZYAMl8F3vr7lgiUvgJh/kyKwYCng7w7zdGY
         Scwq5jnr5ZTe21UrfvImXpFZoLaAj4pkXJ1TrTfbyUCM+NbBJY6jkolRj8BICteO4VIR
         xNmwf3mqjIJl5NvRFqRq9MEwScJFFHVUtf920Oxdr+IDz/1YbzEdo6bm7jhDjzNZq6dY
         D0ImSzJR4cvrMam9Da7raEwcNLGvbq+4yT7Ftay79BTN3VNjDOVTXWStOVjBxy7olFTd
         NL706hSZY8+gC7fWOKjCbG3K2OyT+kxadxKuBj4GSlQmjfV5sqvmVi2L6rUosyl0BHGP
         c3jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:mime-version
         :in-reply-to:references:subject:to:from:date:message-id;
        bh=b7zSZUMn3Ie0XhGiIaLzMmJJ3A5hiz70AtgI5DjiL28=;
        b=UCXr9ge5Ld0Uije6swLcdWaTGVoiAoL+XbcexnuLlm2gdJvjv1CoJQH2sj8TwUtLXB
         8+5a0ToUQSWgr8YTEvYltjsj3EwPqbSPHuYG0RUYdgkurQ5KsDgYGnE+/zc4hAycbMu8
         gYbKartjkB9mcp//vcL6r5GunqRUkyLhAgjB5/I56D6LvkBJrJl8uZ8iwuR9+Rxzz1aa
         PeoBf0sFXqSyM3DEnVCdM0PkEuaeYZGczfrRBxikvDKeI6LLIi3Uhwp6O0wmp9R1bb+2
         ViHA6AYvnGf9G/RXa3VmIBf/uHBOexRfOW1w5xv1pDGQ0OU4UrgG8/tWROZa9pcnen/A
         lJ7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:4:4e7a as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
Received: from mx4.uni-regensburg.de (mx4.uni-regensburg.de. [2001:638:a05:137:165:0:4:4e7a])
        by gmr-mx.google.com with ESMTPS id v21si50147edd.4.2020.11.20.00.22.33
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Nov 2020 00:22:33 -0800 (PST)
Received-SPF: pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:4:4e7a as permitted sender) client-ip=2001:638:a05:137:165:0:4:4e7a;
Received: from mx4.uni-regensburg.de (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id 9B374600005B
	for <open-iscsi@googlegroups.com>; Fri, 20 Nov 2020 09:22:32 +0100 (CET)
Received: from gwsmtp.uni-regensburg.de (gwsmtp1.uni-regensburg.de [132.199.5.51])
	by mx4.uni-regensburg.de (Postfix) with ESMTP id 3BC9C600004E
	for <open-iscsi@googlegroups.com>; Fri, 20 Nov 2020 09:22:32 +0100 (CET)
Received: from uni-regensburg-smtp1-MTA by gwsmtp.uni-regensburg.de
	with Novell_GroupWise; Fri, 20 Nov 2020 09:22:32 +0100
Message-Id: <5FB77CC6020000A10003CD42@gwsmtp.uni-regensburg.de>
X-Mailer: Novell GroupWise Internet Agent 18.3.0
Date: Fri, 20 Nov 2020 09:22:30 +0100
From: "Ulrich Windl" <Ulrich.Windl@rz.uni-regensburg.de>
To: "open-iscsi" <open-iscsi@googlegroups.com>
Subject: Antw: [EXT] [PATCH] iscsiadm: Verify mode parameters when
 recognize mode
References: <20201120062052.51838-1-haowenchao@huawei.com>
In-Reply-To: <20201120062052.51838-1-haowenchao@huawei.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: Ulrich.Windl@rz.uni-regensburg.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates
 2001:638:a05:137:165:0:4:4e7a as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
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

>>> Wenchao Hao <haowenchao@huawei.com> schrieb am 20.11.2020 um 07:20 in Nachricht
<20201120062052.51838-1-haowenchao@huawei.com>:
> Parameters verify should be performed as soon as possible
> to avoid unuseless work.

"avoid unuseless work" ;-)

Is that useful work?



-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/5FB77CC6020000A10003CD42%40gwsmtp.uni-regensburg.de.
