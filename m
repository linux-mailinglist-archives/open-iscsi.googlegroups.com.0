Return-Path: <open-iscsi+bncBDRZ7N5GYAFBB5XZ2D7AKGQESDV5FCA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 68C362D842C
	for <lists+open-iscsi@lfdr.de>; Sat, 12 Dec 2020 04:45:59 +0100 (CET)
Received: by mail-yb1-xb39.google.com with SMTP id e68sf3906191yba.7
        for <lists+open-iscsi@lfdr.de>; Fri, 11 Dec 2020 19:45:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607744758; cv=pass;
        d=google.com; s=arc-20160816;
        b=IdQrKO9t5JZEnpZcqxKBamXUbbzadz5baLLGl32H9jgqXNe4RBsyg3I3KUp9qWaGaB
         YsUMt2nuNan7m8Fy07M5Y6cXj1OJ+hydCl+edUzQ/suHh7gBKC5p4swvecXQsMfJuV3G
         HJ5cghvKhUX6f0ycmcAf5oyqHJJxC7X7oDznWGhpvBrCXhTaNZkqSPd8WNFHh7YE4LsX
         FCgE9/U/gnygxJwyyFjX4hVcc7JlXHz1JxZGG4LDjSb+wckzQmtGU9CjMJDpEFwqvwfE
         8M4Th5lAEHBf0/1p+AJ8tztEm9Q5GTKF7J66GCwFSlU8wI93/uC7/VZKleyFt+Osflky
         Wk7w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:sender:dkim-signature;
        bh=ElHT19F/r6IEBHbb/TySIuoba9HnY/zHo3Xszxx1O0M=;
        b=LPHILToA4CfIbZ8GbovNU7XBky6RwpT9KlT/2GN8ABPqpUmN562DXHIWzhGqVtK18J
         U4g9cmaIPEvfoakc0685oSLCucFH6L7Qbh4kRMa7wR9mE4hNs3HmjKGgoaLdR2RMB83t
         NREMWdfIwsAsV0xX1IV0aWjSakfOIW8lzYouVNC8tlffFmZe+//7kGB2aps+gssI0k2a
         7jEdpXGb49BvKQx8NW+rCg/TOftoChpxAKA/3djLjLmVQd2Tkx0CbRHZd7PL7sFiaFVO
         bhBwNXI2+GY1OvFf7fhM2CRZbnil3oDu9KV3//hvXW5S1jpAzWtmTxA3MSVVi5T3vGQr
         q8Zw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.190 as permitted sender) smtp.mailfrom=haowenchao@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=ElHT19F/r6IEBHbb/TySIuoba9HnY/zHo3Xszxx1O0M=;
        b=YzgRkt4j8q/G7LW1KfhNiFOAqVPq6ViGMTPPsmOfTtqnVyL6jXN6wa5FdM6UqBfOlw
         S8JPbZfrZfMjbWd/2v+Gl2XQ8SPE7uHWY2N/pVlutnShalxgMDQSC8krCLXmejdjCDMC
         VF3oKNhqXj91/rhgHjTHmRbd/Go573yoJ6wJDUJP9MgkM73+c0qQJom3vIJ5atL2x5JF
         igQ+5imL9/FKLLHvNZlFhxBkzN442zMCJdkFvin1uTUXH6WNXDS22eVVHeUjar9SfHC8
         yvPHsfBXIyV/qOnPRLmQex4AB6VKy0fODnD8FhuDqboRHlbWqLvSlYn3X4Yrc1tdAFrk
         HInw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ElHT19F/r6IEBHbb/TySIuoba9HnY/zHo3Xszxx1O0M=;
        b=gLVajJ97lXkqRMgVQj8n0YyNMfJPGolQsS1yf8bs01lCE0Td36MtU/pjeb6hYfXTJO
         ta2Y7O0eX8YwE8D/14Lp7iQZa29z9OiFuKVv2zZYDj5u72EEmYJLVKn74AqYWwXfBZvT
         TFtJaBsliA1g2eXi6AtkP6M4SvX8OsLykbhbbLllOHJXeS24W6vI1XRlyiP+Tih9pWvC
         3kC7axpCOXaxQ0CnTGpSV0SBSFhxk3x6sPDdwQDHUKG/Wel0vgNu4ZCl+cS2A8dGA475
         G139dqq/bvEwlz96p0kOEywEM2u8DeK1gAxzGdbVWjMWff1IYV91U+u/IlR5rfpiVB8E
         HTjg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530V5zhpwNGMY4XqKIa7LZ1f7dfAZWXKBhg4Hjnw6z5/OnxAIyHx
	q/wIpS/OoEy8p00eRu+S7mQ=
X-Google-Smtp-Source: ABdhPJx5a6sQjOhXjfdY2OTkZEdovJ8dmIPfy66iZu13oHYyGD7Gzsu0/CtEAfHbPkv7ouy3//vkwQ==
X-Received: by 2002:a25:8283:: with SMTP id r3mr23198328ybk.66.1607744758344;
        Fri, 11 Dec 2020 19:45:58 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a25:df91:: with SMTP id w139ls5164718ybg.5.gmail; Fri, 11
 Dec 2020 19:45:57 -0800 (PST)
X-Received: by 2002:a25:ac03:: with SMTP id w3mr22805028ybi.135.1607744757932;
        Fri, 11 Dec 2020 19:45:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607744757; cv=none;
        d=google.com; s=arc-20160816;
        b=bPgVVgIKPfEPQD+QEYUCGhZRSuRxbQJdfJqe4DECdVON/ph9TzQeFs710p5B2PM5yN
         tjELdu5ske+lQmWvkuSxF3x21u79ZcXFmSAekvMzU1G+SFmtum+OX7Un8hXdgX0y02MB
         wcATTFvONjd1+yUhDYvp0UF0jDSElDjy5UndRFjNH60WvsISBQFENHZDj98+TgJWT1pz
         r+KzM6yT+Xni+IUpv5ypA/rfkRe3fSQbLFN4VthBNiFrrJnUTL0vfbMttSAnLo/ASn0A
         CqbfEYKEKRQMG+cf26558jRl4DfI5vE7MoOWgMnzRyP1U80uG1Hx5S1GcC722dO4xIae
         zV1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=XF7ncpeUcCtvWkRblDXoQ4kJAWvBDXKyD2ivNtZ5e1c=;
        b=mvEzaYmCf5NdYAFqAuS9Nb9umjVbVoXCppgdIVAOejiujmCUQ6z74O6ytTEThnjx5b
         Qh3r5JZx9gdvNUr/7c8wGFvcgBFw+wRo3xJzesInMjqYbPffzC1r30KfUXeXyVWtPIaO
         eLaGlQ0BzYcjmGv6AOVrFqykeNWVR6InV6b9CxSt/juuS74pVjYPMwr4aNqwIB9Y4xQ6
         jDwkHyepq7SXsh/6Rvr9rSWkGGe6OuuKTDW7hjJoc/nHk6fNAZjmMkOooeM1ckt+YNRI
         Hu4QE96XBJP06ju3Qz62KjEgN+z/wRrRJzO7C87Zal2Sb/8SQMor35d9F+v+XmhB6YOh
         XBUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.190 as permitted sender) smtp.mailfrom=haowenchao@huawei.com
Received: from szxga04-in.huawei.com (szxga04-in.huawei.com. [45.249.212.190])
        by gmr-mx.google.com with ESMTPS id e10si1132552ybp.4.2020.12.11.19.45.57
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Dec 2020 19:45:57 -0800 (PST)
Received-SPF: pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.190 as permitted sender) client-ip=45.249.212.190;
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.60])
	by szxga04-in.huawei.com (SkyGuard) with ESMTP id 4CtD7h6CW5z15bPY;
	Sat, 12 Dec 2020 11:45:20 +0800 (CST)
Received: from [10.136.113.116] (10.136.113.116) by
 DGGEMS412-HUB.china.huawei.com (10.3.19.212) with Microsoft SMTP Server id
 14.3.487.0; Sat, 12 Dec 2020 11:45:48 +0800
Subject: Re: [PATCH 00/12] open-iscsi: fix serverl issues reported by Coverity
To: Lee Duncan <lduncan@suse.com>, <open-iscsi@googlegroups.com>
CC: <linfeilong@huawei.com>, Zhiqiang Liu <liuzhiqiang26@huawei.com>, Wu Bo
	<wubo40@huawei.com>
References: <20201207015410.48488-1-haowenchao@huawei.com>
 <8affd4aa-63af-f05d-2975-86da75f5ebc7@suse.com>
From: Wenchao Hao <haowenchao@huawei.com>
Message-ID: <d7b61124-8f77-a82e-e18a-6eaa11e8980b@huawei.com>
Date: Sat, 12 Dec 2020 11:45:48 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <8affd4aa-63af-f05d-2975-86da75f5ebc7@suse.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Originating-IP: [10.136.113.116]
X-CFilter-Loop: Reflected
X-Original-Sender: haowenchao@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of haowenchao@huawei.com designates 45.249.212.190 as
 permitted sender) smtp.mailfrom=haowenchao@huawei.com
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

On 2020/12/12 0:32, Lee Duncan wrote:
> I have reviewed a couple of these, but you need to submit them as pull
> requests to github.com/open-iscsi/open-iscsi.
>
> The "reviewed-by" tag I replied to a couple of them really isn't needed,
> as I'm the one that will be merging them (or not) on github (sans Chris,
> my co-maintainer, who sometimes does that).

I submitted a pull request to github already.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/d7b61124-8f77-a82e-e18a-6eaa11e8980b%40huawei.com.
