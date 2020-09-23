Return-Path: <open-iscsi+bncBDLPRE656MLBBHMWVT5QKGQENPA5QBQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C752275390
	for <lists+open-iscsi@lfdr.de>; Wed, 23 Sep 2020 10:45:18 +0200 (CEST)
Received: by mail-lf1-x13b.google.com with SMTP id v128sf4393483lfa.5
        for <lists+open-iscsi@lfdr.de>; Wed, 23 Sep 2020 01:45:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600850718; cv=pass;
        d=google.com; s=arc-20160816;
        b=hpXFBNIhypIywLwlMTJn1oXz6VjXfjnVicQRi3ZHtZvQNVy9Xgk6g64yccMg8tShX8
         urp8H9k+w5rYoAx0LsZ1hQHUG0niC6pQ7KVqvv+hcJH84KI3mMXrTxsYAG+lanrWlw+M
         yrV8ymSYhuEAiA4DZfCEe+QGzt07Ym2S594P3DwK1ADh1SenlzdvlgUR8i8DvkI+X8S/
         ukD5+8uzyB493HFemV1reZK+6HRgjvCl3WmkOEjmnnPijndegqb+8cJ1VX7SIolqd3CE
         OAp+bl7p5PE4FT4zSHRh8JLucvmQewabONoegJa5h26V+aYMcERVpGbf+c7xZ5jcHHNn
         R7HA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:autocrypt:from
         :references:cc:to:subject:sender:dkim-signature;
        bh=ChAL9m2Hgsx8SRM7PNaHZeJGvpcOnwF0B9YVNXa/kP8=;
        b=i58S9h+Ot7ofkoSkn5QNeNlONPcKudKQEN3Zq3E0k9LyJ2+Ntc99AvvT6lq8H+7uZj
         6mGvXZux+3L9plDy998fEQsvLJ+4dae4imL2OBDw3w5kp5vlYodu6uN+eJPgpwsRHSCj
         XOjb7vYZwJkVxVtEt6LwbYJQqzgk2aGoKu2yXGArtIdLypW+9MTZdUnBj42oNfI8bko2
         Cm5sa0tn85FwCKQZr4JAmbGnUKBmC437moUzTB80W3HMsV9O4NB37dbee61M1/dDzY3T
         VvcS2osBu09WPi2/w6UPt4cHWTiQf3n1j4baKv3QHxzloCI1mWkLQLaMLDrZf6Y7Ut34
         HNkA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ChAL9m2Hgsx8SRM7PNaHZeJGvpcOnwF0B9YVNXa/kP8=;
        b=eKvvLxcMMnmJ3pV/dnT6GmakWQrQY/5hKLmRltKBXqujkZhn6dIrrZhl5krjr7jgqI
         FfzdDOaxsHwOnog/xcHxYsTCrFaRsjGZ1qQnKwmehL6ztR3V+369k+PkYVqy9Eo0LIrP
         Gdi7FZ6AP5XxJz9+Lth6TTO4BJtzV56hNTKsIc9Aib/UjWm4srOD33SyspIFJVdv2r88
         v51OpZp/Xs6BAPq15QMV+AGteNjMkj0BKT3Un7zTZgDOslvpL0I2h+VMpNxABS85YrEp
         CvwnHXIVgKgMX06I9igL59td6NlPDxXOlRnSpbELHAdYfuSO2R5aos+50Kl2q6uoVR+Y
         Q69Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ChAL9m2Hgsx8SRM7PNaHZeJGvpcOnwF0B9YVNXa/kP8=;
        b=tR26L7QKMlwXQ/DSJc+KOHmO0Wz3aEhmwdhQTpg/CubzrcpVr9yYTqZi75efee8XZj
         hwtK17oxfJjJQN0deeRerJq95RbVnOyP+kXcgNVCu0EAZyXdnMiLVhmvaRfu+2pcWiRv
         1CyplmzLmVCFhv/dM286ytaVTI6fG5vflq3bv7jQDZAesszO52OaMbiI8ZgnNex4Napf
         /PMcuYscKex0B5Ipx2krQjy+7xx9+lOX5o2UDbPJGfRQUkSDaZRC5a0i0bMuWMHwqJJ1
         TLg2tz+SHrEgYyEae6v0E43gYrq737QFzUs+1M2EgkZKTiH3X+adtP8HZ9ow2nfKrO+v
         Wq7w==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531MCoeBC77+ntRDtH6Q+ucFx0wW6iSO7RnkFUpWF9ErfN/0+dTD
	xwmRp/1tjnZp0knmJ06gmxY=
X-Google-Smtp-Source: ABdhPJzH/zmtno00SC46C7Yiz1hx/gYWYed0wJzB2dW84wuhz6VxCsRJGpPhZJzOHU8wd7VuajPtCw==
X-Received: by 2002:a05:6512:370e:: with SMTP id z14mr3245493lfr.80.1600850718156;
        Wed, 23 Sep 2020 01:45:18 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ac2:5c44:: with SMTP id s4ls1706042lfp.3.gmail; Wed, 23 Sep
 2020 01:45:17 -0700 (PDT)
X-Received: by 2002:a19:8446:: with SMTP id g67mr2805825lfd.87.1600850717014;
        Wed, 23 Sep 2020 01:45:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600850717; cv=none;
        d=google.com; s=arc-20160816;
        b=xDzTmcFhAnZTVbKJPCTf/gzX4HXOfiXCoDxRiIb05sc4lxaCG/2o7vHtK0QqkWaMHg
         2Tv1UH5HPWYg3AC6PPSGAbNc2mmJtv78X0A+qGgqQgBPG3bOpLSu9fIsPH5cQyz27DLf
         iWdaHRap6i6qpDxc9upbKYRuH4D2vJ14nVKTSTLAdD5KsmiUaiaE7vyMYTHNcn+RbwWk
         umiQ8FeytUKMW9kQUQJp89B6ncSq9WmOCB6/ycl3bD7c5UcvXA8LZBVrrIF2jxcI4ZD1
         L7xmfAlelOTPp9y9Lnqf7saI/yYBXXThWaMRRLwf8ycnvkEdxoKGgY1tc/zKitQjbzd9
         XYcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:autocrypt:from:references:cc:to:subject;
        bh=k3S+//HJ59SukZnEPKBbqADcPJes2+3Qi8myzHjtP+A=;
        b=w7hmr6muK8gLPnIpFciadJpDeXohe3K1tqi4AJTpUAHkoiLmfd7FD1AYnp/p8bhAck
         wBE3FF/eg47cJn9Q5kuG0eE9q1rMQMiZa2fx2czdb/kz9/P92ThgYdIHYXFOXEtIy2Kc
         pLlpQzgPW3gNvBkqYmRQxllNp9wZ0vc3b1WHSP0Pn8tHzLqgf08bXpozz+Fn0ZziOC1L
         A5peMaNUzBzTWJT1bDIGiShjqfQu0DRYPlot0fjOPFbFpuV+sBL/58NZ5cSC8ngOz+/w
         /lsfO6k9+FLDn5dY4ELgTLBYRx+i/cG4DgHRl0xoTtX8HG6dWhPQN7q5TNQAtPhoXcJU
         2Dew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id f23si87947ljg.8.2020.09.23.01.45.16
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 23 Sep 2020 01:45:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 76627AC65;
	Wed, 23 Sep 2020 08:45:53 +0000 (UTC)
Subject: Re: [PATCH v7 1/6] net: introduce helper sendpage_ok() in
 include/linux/net.h
To: Christoph Hellwig <hch@lst.de>
Cc: linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
 netdev@vger.kernel.org, open-iscsi@googlegroups.com,
 linux-scsi@vger.kernel.org, ceph-devel@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chaitanya Kulkarni
 <chaitanya.kulkarni@wdc.com>, Hannes Reinecke <hare@suse.de>,
 Jan Kara <jack@suse.com>, Jens Axboe <axboe@kernel.dk>,
 Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>,
 Philipp Reisner <philipp.reisner@linbit.com>,
 Sagi Grimberg <sagi@grimberg.me>, Vlastimil Babka <vbabka@suse.com>,
 stable@vger.kernel.org
References: <20200818131227.37020-1-colyli@suse.de>
 <20200818131227.37020-2-colyli@suse.de> <20200818162404.GA27196@lst.de>
 <217ec0ec-3c5a-a8ed-27d9-c634f0b9a045@suse.de>
 <20200818194930.GA31966@lst.de>
 <04408ff6-f765-8f3e-ead9-aec55043e469@suse.de>
 <20200923084303.GA21657@lst.de>
From: Coly Li <colyli@suse.de>
Autocrypt: addr=colyli@suse.de; keydata=
 mQINBFYX6S8BEAC9VSamb2aiMTQREFXK4K/W7nGnAinca7MRuFUD4JqWMJ9FakNRd/E0v30F
 qvZ2YWpidPjaIxHwu3u9tmLKqS+2vnP0k7PRHXBYbtZEMpy3kCzseNfdrNqwJ54A430BHf2S
 GMVRVENiScsnh4SnaYjFVvB8SrlhTsgVEXEBBma5Ktgq9YSoy5miatWmZvHLFTQgFMabCz/P
 j5/xzykrF6yHo0rHZtwzQzF8rriOplAFCECp/t05+OeHHxjSqSI0P/G79Ll+AJYLRRm9til/
 K6yz/1hX5xMToIkYrshDJDrUc8DjEpISQQPhG19PzaUf3vFpmnSVYprcWfJWsa2wZyyjRFkf
 J51S82WfclafNC6N7eRXedpRpG6udUAYOA1YdtlyQRZa84EJvMzW96iSL1Gf+ZGtRuM3k49H
 1wiWOjlANiJYSIWyzJjxAd/7Xtiy/s3PRKL9u9y25ftMLFa1IljiDG+mdY7LyAGfvdtIkanr
 iBpX4gWXd7lNQFLDJMfShfu+CTMCdRzCAQ9hIHPmBeZDJxKq721CyBiGAhRxDN+TYiaG/UWT
 7IB7LL4zJrIe/xQ8HhRO+2NvT89o0LxEFKBGg39yjTMIrjbl2ZxY488+56UV4FclubrG+t16
 r2KrandM7P5RjR+cuHhkKseim50Qsw0B+Eu33Hjry7YCihmGswARAQABtBhDb2x5IExpIDxj
 b2x5bGlAc3VzZS5kZT6JAlYEEwEIAEACGyMHCwkIBwMCAQYVCAIJCgsEFgIDAQIeAQIXgBYh
 BOo+RS/0+Uhgjej60Mc5B5Nrffj8BQJcR84dBQkY++fuAAoJEMc5B5Nrffj8ixcP/3KAKg1X
 EcoW4u/0z+Ton5rCyb/NpAww8MuRjNW82UBUac7yCi1y3OW7NtLjuBLw5SaVG5AArb7IF3U0
 qTOobqfl5XHsT0o5wFHZaKUrnHb6y7V3SplsJWfkP3JmOooJsQB3z3K96ZTkFelsNb0ZaBRu
 gV+LA4MomhQ+D3BCDR1it1OX/tpvm2uaDF6s/8uFtcDEM9eQeqATN/QAJ49nvU/I8zDSY9rc
 0x9mP0x+gH4RccbnoPu/rUG6Fm1ZpLrbb6NpaYBBJ/V1BC4lIOjnd24bsoQrQmnJn9dSr60X
 1MY60XDszIyzRw7vbJcUn6ZzPNFDxFFT9diIb+wBp+DD8ZlD/hnVpl4f921ZbvfOSsXAJrKB
 1hGY17FPwelp1sPcK2mDT+pfHEMV+OQdZzD2OCKtza/5IYismJJm3oVUYMogb5vDNAw9X2aP
 XgwUuG+FDEFPamFMUwIfzYHcePfqf0mMsaeSgtA/xTxzx/0MLjUJHl46Bc0uKDhv7QUyGz0j
 Ywgr2mHTvG+NWQ/mDeHNGkcnsnp3IY7koDHnN2xMFXzY4bn9m8ctqKo2roqjCzoxD/njoAhf
 KBzdybLHATqJG/yiZSbCxDA1n/J4FzPyZ0rNHUAJ/QndmmVspE9syFpFCKigvvyrzm016+k+
 FJ59Q6RG4MSy/+J565Xj+DNY3/dCuQINBFYX6S8BEADZP+2cl4DRFaSaBms08W8/smc5T2CO
 YhAoygZn71rB7Djml2ZdvrLRjR8Qbn0Q/2L2gGUVc63pJnbrjlXSx2LfAFE0SlfYIJ11aFdF
 9w7RvqWByQjDJor3Z0fWvPExplNgMvxpD0U0QrVT5dIGTx9hadejCl/ug09Lr6MPQn+a4+qs
 aRWwgCSHaIuDkH3zI1MJXiqXXFKUzJ/Fyx6R72rqiMPHH2nfwmMu6wOXAXb7+sXjZz5Po9GJ
 g2OcEc+rpUtKUJGyeQsnCDxUcqJXZDBi/GnhPCcraQuqiQ7EGWuJfjk51vaI/rW4bZkA9yEP
 B9rBYngbz7cQymUsfxuTT8OSlhxjP3l4ZIZFKIhDaQeZMj8pumBfEVUyiF6KVSfgfNQ/5PpM
 R4/pmGbRqrAAElhrRPbKQnCkGWDr8zG+AjN1KF6rHaFgAIO7TtZ+F28jq4reLkur0N5tQFww
 wFwxzROdeLHuZjL7eEtcnNnzSkXHczLkV4kQ3+vr/7Gm65mQfnVpg6JpwpVrbDYQeOFlxZ8+
 GERY5Dag4KgKa/4cSZX2x/5+KkQx9wHwackw5gDCvAdZ+Q81nm6tRxEYBBiVDQZYqO73stgT
 ZyrkxykUbQIy8PI+g7XMDCMnPiDncQqgf96KR3cvw4wN8QrgA6xRo8xOc2C3X7jTMQUytCz9
 0MyV1QARAQABiQI8BBgBCAAmAhsMFiEE6j5FL/T5SGCN6PrQxzkHk2t9+PwFAlxHziAFCRj7
 5/EACgkQxzkHk2t9+PxgfA//cH5R1DvpJPwraTAl24SUcG9EWe+NXyqveApe05nk15zEuxxd
 e4zFEjo+xYZilSveLqYHrm/amvQhsQ6JLU+8N60DZHVcXbw1Eb8CEjM5oXdbcJpXh1/1BEwl
 4phsQMkxOTns51bGDhTQkv4lsZKvNByB9NiiMkT43EOx14rjkhHw3rnqoI7ogu8OO7XWfKcL
 CbchjJ8t3c2XK1MUe056yPpNAT2XPNF2EEBPG2Y2F4vLgEbPv1EtpGUS1+JvmK3APxjXUl5z
 6xrxCQDWM5AAtGfM/IswVjbZYSJYyH4BQKrShzMb0rWUjkpXvvjsjt8rEXpZEYJgX9jvCoxt
 oqjCKiVLpwje9WkEe9O9VxljmPvxAhVqJjX62S+TGp93iD+mvpCoHo3+CcvyRcilz+Ko8lfO
 hS9tYT0HDUiDLvpUyH1AR2xW9RGDevGfwGTpF0K6cLouqyZNdhlmNciX48tFUGjakRFsxRmX
 K0Jx4CEZubakJe+894sX6pvNFiI7qUUdB882i5GR3v9ijVPhaMr8oGuJ3kvwBIA8lvRBGVGn
 9xvzkQ8Prpbqh30I4NMp8MjFdkwCN6znBKPHdjNTwE5PRZH0S9J0o67IEIvHfH0eAWAsgpTz
 +jwc7VKH7vkvgscUhq/v1/PEWCAqh9UHy7R/jiUxwzw/288OpgO+i+2l11Y=
Message-ID: <58455251-7d90-b890-17dc-abe0954715e1@suse.de>
Date: Wed, 23 Sep 2020 16:45:07 +0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200923084303.GA21657@lst.de>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: colyli@suse.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted
 sender) smtp.mailfrom=colyli@suse.de
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

On 2020/9/23 16:43, Christoph Hellwig wrote:
> On Wed, Aug 19, 2020 at 12:22:05PM +0800, Coly Li wrote:
>> On 2020/8/19 03:49, Christoph Hellwig wrote:
>>> On Wed, Aug 19, 2020 at 12:33:37AM +0800, Coly Li wrote:
>>>> On 2020/8/19 00:24, Christoph Hellwig wrote:
>>>>> I think we should go for something simple like this instead:
>>>>
>>>> This idea is fine to me. Should a warning message be through here? IMHO
>>>> the driver still sends an improper page in, fix it in silence is too
>>>> kind or over nice to the buggy driver(s).
>>>
>>> I don't think a warning is a good idea.  An API that does the right
>>> thing underneath and doesn't require boiler plate code in most callers
>>> is the right API.
>>>
>>
>> Then I don't have more comment.
> 
> So given the feedback from Dave I suspect we should actually resurrect
> this series, sorry for the noise.  And in this case I think we do need
> the warning in kernel_sendpage.
> 

Copied, then I will post a v8 series, which adding a warning message in
kernel_sendpage() if non-acceptible paage sent in.

Coly Li

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/58455251-7d90-b890-17dc-abe0954715e1%40suse.de.
