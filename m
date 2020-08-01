Return-Path: <open-iscsi+bncBD3JNNMDTMEBB36SSP4QKGQENJRN6JI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 1388823502C
	for <lists+open-iscsi@lfdr.de>; Sat,  1 Aug 2020 06:02:57 +0200 (CEST)
Received: by mail-io1-xd3d.google.com with SMTP id f22sf14339999iof.20
        for <lists+open-iscsi@lfdr.de>; Fri, 31 Jul 2020 21:02:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596254576; cv=pass;
        d=google.com; s=arc-20160816;
        b=k7bNnr6dmk5zT6kaAv64PzNdO1aXcnJSYSMyvx8QQkHTky3fqBbVEn940YjhyiLEc1
         FJ5oRm0Ljd2hOi72P6qIEjI/zuQi1fp0b1lsEXXiyQGAnOse12aOVtsKqNXnVXS6TPvl
         Ksv4Rx7BSfOZDnSDRUMEOutpncN7qs95DAo5ToUgDuBqhBapdzzxFkmk04QCzpMA25+0
         Ymk6pWg7/33sedA479pWkFGO04NIMTomKAiNVfTIt/B6mL5XWk4kHlEPNdmyZ666Nwm/
         q29BaVj2mlCjqA5YtbjgUDy/hepvwx82cN9xWxlluQL9R82Y/QspHww/cTW7TUue+8S4
         03SA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:autocrypt:from
         :references:to:subject:sender:dkim-signature;
        bh=NzKsQDcfwIMn1KQbgZ2imLCEzcp/fei/4f2yVF4fwFI=;
        b=Q1RmuluvEBohBNyHUA1nfxWN4itIYncsVH5zfTabdj7WnuqNYd61HKYaxew0kObcX/
         qd/4/0nHRifGV+X9NatTFXLaCGozofritW/kSNf1lTnOccF3owZOvyT3N/tMzmu86rIz
         WZmeG7G3Y6wBVBDUsrdw7/0VR/wEzOKMdLkJ47zBXM4YQEsWy97+jHqFr3SVYErgG85j
         kZi9h7hoM3naiz/Q4CUqlKsI1/QbA+Typ9VL+RkXy4Wj0e2/tdBgrY7Z1W+tipj4E26R
         DyOtotG4HngoDCimxHLvvQ+ZR9iQxCfMgn7g2RBA1A1I9n+toMQbCmRYxJmYbrIeDKPu
         wzmQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.210.181 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:references:from:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NzKsQDcfwIMn1KQbgZ2imLCEzcp/fei/4f2yVF4fwFI=;
        b=lZJA7K/DHyYYz7xmX7CyuIuLm55708oQD58p9kqfTmus1njVtCUeBcnrebawVoqUJg
         hCdvY3uqAV5WsKeOjD5am/kuENRa/ERVoE361sXEXxx3J5+Dqpz6mRDUKjDD1QrFTRL0
         cgJOMD1SLVZrmnMhfQmjFQsqHrs/vkMkhefwZH1Qbi/uZWl1ZNgzCQOEt13VaKO1EebP
         HPqSXL4gkf+ZSatKzQdOLaRJXek3cpHoSWfqAmkbSqikJGLAB6oQyBFhfS57kwiZJ+p9
         Wy0cqho6PK/eqxuQnmbGl81AwED0Gy7eNILpl8mhf+3gBvBXyBiHftpd6B12lFejDzUE
         OvLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NzKsQDcfwIMn1KQbgZ2imLCEzcp/fei/4f2yVF4fwFI=;
        b=sDooaihcmFTfo9ZxqlQGMjavb/s68enZdSRfn6RZRtIjvBuT4uPeNqisnQd5yGBVHP
         qFivjJgm1txmy4Pur6xNY2UDaRGRrccss+a4YZkLVAojOQZxKMWcC2lbyZhBCFO90uY6
         gygcj0MTCCBGRLf9kpbKXMCsDSSGbeeAhszOvS3jMtxTRuFEKKpYaT9gFfaFbaB4gBIJ
         D/6nfl+25UsDdqxUyfwD9D3WQu2TttFLYstzAlMua7iA4EQ0AH7ARQ75VjOFpODG47P+
         p8e80BbhTojUwJXFko7bB84t4yldjlso60KqkENQXhuemvOgSr2bxYwLEc8Kka61qsOZ
         6PTw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532JKyC551BZm+y8jSzRp/7XQO8QRdA6hgNh4p/ySnZsErsJjEgz
	e20T+07IynZJ7PCjrhkX0ws=
X-Google-Smtp-Source: ABdhPJyNk4hRWn8q8rEuPPdVopZYhu5TIWlZCdIaXnlA9WvRWMVH/Iyr2SlVT5PPddPY8vYzZS8kwg==
X-Received: by 2002:a92:d7cb:: with SMTP id g11mr6699261ilq.89.1596254576012;
        Fri, 31 Jul 2020 21:02:56 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a6b:5d03:: with SMTP id r3ls1977066iob.10.gmail; Fri, 31 Jul
 2020 21:02:55 -0700 (PDT)
X-Received: by 2002:a5d:9a99:: with SMTP id c25mr6594606iom.116.1596254575601;
        Fri, 31 Jul 2020 21:02:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596254575; cv=none;
        d=google.com; s=arc-20160816;
        b=KSy7aB/m/jkdITtzacDQsDoxFLCaIVAghU9FKtczZhLg3MUfoUL6MHfy5VQngTAWQK
         T3ugNokq7jUGokfgF1ePzW04Mq/DfMFP03xc62p95SNKqoNiU5X/AxoKPi8lv0whf51x
         incFzrv9RiYm45JXnAvlqhezJLY3/yCNW+HX2TKvhEgQ8XlxjyOkacZG1qrYDuuIP2KZ
         d1r2iSdmNi4cMU7SApSK8cQquyetCrjhjxKUbermLX9yFHmAJGdaIvLoI/BkpeAsjTfW
         VI6c8mqdDe2Dz6JU2mKeFwdYNvDKf8exsYaAJPwytBiH4ratyKpgjQ/e0s93b7/BqedY
         Haog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:autocrypt:from:references:to:subject;
        bh=k9L8hYf9ZYaeeIsPi7ujjifEOvOhI8vcmY5sNVofmnE=;
        b=I2fHJ18Vt14pczZUVGdZ0wREChjj9rt7l4/36d0HRc1AJ62bySEOzgvMH0AEPQQ0yE
         lSswwhfUt4aS1PmmOuwd+xdZzWpSNAYc8uLqBBPZtFXC1hBy31h9MZmy3ojaTaqa6ndu
         RFQFhq/Zx7MGt0qFqJeOE4YzHaerc8oRB3SBI/i8ZlOtv5cTgn066bSvmB1sJl16tP6N
         1ogZlsBoAeP+E7nZ4nqIuQ/176/r4/TAwM26xWTm8fPi9SO5lLqWYTZWzRJlhGfjIz49
         0a+sTmuf0FXxN033T1jrANEm4nJq7U1sswNggxIwDnZCuYMaiJEWosXjEPixiHD4Uo9j
         MOVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.210.181 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com. [209.85.210.181])
        by gmr-mx.google.com with ESMTPS id k8si651082ios.2.2020.07.31.21.02.55
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jul 2020 21:02:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.210.181 as permitted sender) client-ip=209.85.210.181;
Received: by mail-pf1-f181.google.com with SMTP id k18so8189020pfp.7
        for <open-iscsi@googlegroups.com>; Fri, 31 Jul 2020 21:02:55 -0700 (PDT)
X-Received: by 2002:a63:7e55:: with SMTP id o21mr6567015pgn.5.1596254574926;
        Fri, 31 Jul 2020 21:02:54 -0700 (PDT)
Received: from [192.168.3.219] (c-73-241-217-19.hsd1.ca.comcast.net. [73.241.217.19])
        by smtp.gmail.com with ESMTPSA id b13sm12893303pgd.36.2020.07.31.21.02.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jul 2020 21:02:54 -0700 (PDT)
Subject: Re: Todo list for open-iscsi
To: open-iscsi@googlegroups.com, sonu kumar <sonukumar159842@gmail.com>
References: <CAOaPBH76JhA0Mm9wNT+m6a-sXPyusVHPMfLwNo73ettORPO8fw@mail.gmail.com>
From: Bart Van Assche <bvanassche@acm.org>
Autocrypt: addr=bvanassche@acm.org; prefer-encrypt=mutual; keydata=
 mQENBFSOu4oBCADcRWxVUvkkvRmmwTwIjIJvZOu6wNm+dz5AF4z0FHW2KNZL3oheO3P8UZWr
 LQOrCfRcK8e/sIs2Y2D3Lg/SL7qqbMehGEYcJptu6mKkywBfoYbtBkVoJ/jQsi2H0vBiiCOy
 fmxMHIPcYxaJdXxrOG2UO4B60Y/BzE6OrPDT44w4cZA9DH5xialliWU447Bts8TJNa3lZKS1
 AvW1ZklbvJfAJJAwzDih35LxU2fcWbmhPa7EO2DCv/LM1B10GBB/oQB5kvlq4aA2PSIWkqz4
 3SI5kCPSsygD6wKnbRsvNn2mIACva6VHdm62A7xel5dJRfpQjXj2snd1F/YNoNc66UUTABEB
 AAG0JEJhcnQgVmFuIEFzc2NoZSA8YnZhbmFzc2NoZUBhY20ub3JnPokBOQQTAQIAIwUCVI67
 igIbAwcLCQgHAwIBBhUIAgkKCwQWAgMBAh4BAheAAAoJEHFcPTXFzhAJ8QkH/1AdXblKL65M
 Y1Zk1bYKnkAb4a98LxCPm/pJBilvci6boefwlBDZ2NZuuYWYgyrehMB5H+q+Kq4P0IBbTqTa
 jTPAANn62A6jwJ0FnCn6YaM9TZQjM1F7LoDX3v+oAkaoXuq0dQ4hnxQNu792bi6QyVdZUvKc
 macVFVgfK9n04mL7RzjO3f+X4midKt/s+G+IPr4DGlrq+WH27eDbpUR3aYRk8EgbgGKvQFdD
 CEBFJi+5ZKOArmJVBSk21RHDpqyz6Vit3rjep7c1SN8s7NhVi9cjkKmMDM7KYhXkWc10lKx2
 RTkFI30rkDm4U+JpdAd2+tP3tjGf9AyGGinpzE2XY1K5AQ0EVI67igEIAKiSyd0nECrgz+H5
 PcFDGYQpGDMTl8MOPCKw/F3diXPuj2eql4xSbAdbUCJzk2ETif5s3twT2ER8cUTEVOaCEUY3
 eOiaFgQ+nGLx4BXqqGewikPJCe+UBjFnH1m2/IFn4T9jPZkV8xlkKmDUqMK5EV9n3eQLkn5g
 lco+FepTtmbkSCCjd91EfThVbNYpVQ5ZjdBCXN66CKyJDMJ85HVr5rmXG/nqriTh6cv1l1Js
 T7AFvvPjUPknS6d+BETMhTkbGzoyS+sywEsQAgA+BMCxBH4LvUmHYhpS+W6CiZ3ZMxjO8Hgc
 ++w1mLeRUvda3i4/U8wDT3SWuHcB3DWlcppECLkAEQEAAYkBHwQYAQIACQUCVI67igIbDAAK
 CRBxXD01xc4QCZ4dB/0QrnEasxjM0PGeXK5hcZMT9Eo998alUfn5XU0RQDYdwp6/kMEXMdmT
 oH0F0xB3SQ8WVSXA9rrc4EBvZruWQ+5/zjVrhhfUAx12CzL4oQ9Ro2k45daYaonKTANYG22y
 //x8dLe2Fv1By4SKGhmzwH87uXxbTJAUxiWIi1np0z3/RDnoVyfmfbbL1DY7zf2hYXLLzsJR
 mSsED/1nlJ9Oq5fALdNEPgDyPUerqHxcmIub+pF0AzJoYHK5punqpqfGmqPbjxrJLPJfHVKy
 goMj5DlBMoYqEgpbwdUYkH6QdizJJCur4icy8GUNbisFYABeoJ91pnD4IGei3MTdvINSZI5e
Message-ID: <2fe3c05a-6340-baba-8729-2a24f2ed5a84@acm.org>
Date: Fri, 31 Jul 2020 21:02:53 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAOaPBH76JhA0Mm9wNT+m6a-sXPyusVHPMfLwNo73ettORPO8fw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: bvanassche@acm.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of bart.vanassche@gmail.com designates 209.85.210.181 as
 permitted sender) smtp.mailfrom=bart.vanassche@gmail.com
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

On 2020-07-30 21:58, sonu kumar wrote:
> I looked into the TODO list of open-iscsi. It is quite old and written
> on July 7th,2011. Do we have any updated version of it?
> 
> I am looking for some low hanging tasks to getting started with
> open-iscsi and iscsi. It would be really helpful if somebody helps me
> to figure it out.

How about adding support for MaxOutstandingR2T > 1? See also "Is
MaxOutstandingR2T hardcoded?"
(https://groups.google.com/forum/#!topic/open-iscsi/d9bUoaYZJiY).

Thanks,

Bart.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/2fe3c05a-6340-baba-8729-2a24f2ed5a84%40acm.org.
