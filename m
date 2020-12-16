Return-Path: <open-iscsi+bncBAABBP6M537AKGQEDPINVFI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf3c.google.com (mail-qv1-xf3c.google.com [IPv6:2607:f8b0:4864:20::f3c])
	by mail.lfdr.de (Postfix) with ESMTPS id E00FD2DD888
	for <lists+open-iscsi@lfdr.de>; Thu, 17 Dec 2020 19:41:05 +0100 (CET)
Received: by mail-qv1-xf3c.google.com with SMTP id 102sf21421946qva.0
        for <lists+open-iscsi@lfdr.de>; Thu, 17 Dec 2020 10:41:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608230464; cv=pass;
        d=google.com; s=arc-20160816;
        b=ouKXnerwzxIAM78PpKX1iHKM4pdsCWt+79kvKpCOnJpvvkGCg2/R/UPnzvdlG+v0Ay
         c4TCeIr0KfFsphlmk89aBgrauDPf59zqOZ7YRwTcvgBcoWqojKh9Jop8ZDcKsfXtxtpX
         nPuYGGahToxlRnFyeWwgbz8KUrE7Z21zmBhZjHzbHAQJm3MQa+azUh+tR3uTjlDBq7Of
         QhYr1+niXlu2YfLWbJodKRYqyvO90uy7NPaIM63uJkUw//SQcWgN+2tV5ffPXRXaCoRO
         fQLDEgHih32C5JDpxM1sFxjeFeDXlGuJgXhV4fY4yxYXqp9E/4mb/OqZgspvmUSXsSMl
         +bDg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:mime-version:user-agent:date:message-id:subject
         :from:cc:to:delivery-date:dkim-signature;
        bh=UqQBPWSFJY0iiDB4VOTQPTKo99OteJ+M28qtpieVCDc=;
        b=d3obWRhNDg2AXykoSdaLR8WXHf4hHvjUuTJTAqAmtQdJ5aEcZYWUwZBaN2f50mamyN
         JzP3d3QuAsHri2eFvwAqwZk6XtvMt8zYnhbxDGz+7Sfyw+q5HRuSa9prm7MGI6r/NG03
         hh4CErUX/9oCPX1dfIARwCoYn2OwoQdlkVWkLamdc2TWb20swEI1QTSOg0VtBExniesI
         cpH0n4wFLYq4Y1Wj5iazA2k/4+lEMdgqQY2yCHrb9NGydMhpOppd+QhcopjtPB/YMJvi
         Nu52H0xKcBOUiZhFRDI+XLVPPbm5SCZBK1nl2fmEw8XgwEMLZX0K7tQDRh1iUbGYwLr8
         xLYA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@greenbone.net header.s=20170621 header.b=EqWr5SrD;
       spf=pass (google.com: domain of christian.fischer@greenbone.net designates 185.135.33.27 as permitted sender) smtp.mailfrom=christian.fischer@greenbone.net;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=greenbone.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=delivery-date:to:cc:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UqQBPWSFJY0iiDB4VOTQPTKo99OteJ+M28qtpieVCDc=;
        b=GkswbIWo0ySe4MgcfrK7HyX3D32CvLf05QC/IocGruy8YQGLY+S2OKWPtcKWKRPK7Q
         sdjnvInkBy8G7ew6XFpAdL1k//p5rzz/3V0qyXpe7XTrcKnLy/vyEtEERje0c2cmopF4
         i5CtaOVoW1Cm1YEsOK5g+zap+LlTi3t50N4XcU9wISOHAjfW+TZizK6Y39V+KZSGuhLE
         74bM1GNv4F7inVEQ38mhzXbKX/BPN24vEKIjxmtTsxyEy9pe8ct+qXi5X+6G3MtwV0rm
         vNZsqY2F1Ft098H/mVUPywlU8+nik/xyH4ruMOff/nHrYvCbbEl2A6nBFV2As1oT5OLr
         nbrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:delivery-date:to:cc:from:subject:message-id:date
         :user-agent:mime-version:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UqQBPWSFJY0iiDB4VOTQPTKo99OteJ+M28qtpieVCDc=;
        b=pUvTwClJK91jAqtMTNACs1UDnorFH8ucknFEkEL7vLEIKe8Uxx4HqZCb55K+2iOkMy
         rty+kyQ6iRdqBiZn4idFZ44FMRuHndQdCPKLfoWl3DY031w3p3pwWw9AbnMh9UbX9IaP
         s4KquHRrzDj7ye55KwyQ5sw31EUvh7CwXLGTtqCxytEeM7wkPUuFORrP8lyhCBxzMy6+
         Qx7yVs8MyhanWgGKZ1qWdLfRz2JJPIB9fTnpQgvn/0rZKyYM6/XeKT3juAcjbABhiaFj
         GuQ98nr8xT3XhsuJ9i/V9yvyvbXoY9aM0jFXyH3WbTmvsWt4GuB95480WZ51gC2mST9C
         2cjg==
X-Gm-Message-State: AOAM530BrRJwKat8QUzfvFYdwP5C73Mk31fEDa/NmwMDqGE2900A8Xj1
	UiPlR7OhXw6z5c+1e7wPp7Q=
X-Google-Smtp-Source: ABdhPJyFZuGWMgWmJtTww4MQfvedKbs6vxVWSseHtzWkFFP/6IU/Yd7jVDd21G92gTEyS8Mnd0NDtQ==
X-Received: by 2002:a05:6214:6a1:: with SMTP id s1mr647762qvz.20.1608230463895;
        Thu, 17 Dec 2020 10:41:03 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a37:9a4f:: with SMTP id c76ls13310800qke.8.gmail; Thu, 17
 Dec 2020 10:41:03 -0800 (PST)
X-Received: by 2002:a37:658e:: with SMTP id z136mr626555qkb.117.1608230463531;
        Thu, 17 Dec 2020 10:41:03 -0800 (PST)
Received: by 2002:a37:b703:0:b029:12b:28f0:4e2b with SMTP id h3-20020a37b7030000b029012b28f04e2bmsqkf;
        Wed, 16 Dec 2020 06:15:37 -0800 (PST)
X-Received: by 2002:a05:600c:2116:: with SMTP id u22mr3560620wml.174.1608128137115;
        Wed, 16 Dec 2020 06:15:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608128137; cv=none;
        d=google.com; s=arc-20160816;
        b=ELwvc1Snwg9m4n+1FcfNlP0AHB0hZipVu8dZ7YKCEGbac10wpUV9h9Lj9ySNxHjF+f
         A9C7FhD60ZM+fzZVqkW3VvjCI74iIBz5TWy0ieJo55e3K+c3OxXBs0Frw0bkQvibPDRQ
         VDz7pJ0p11S5sBhbgsuIp10aBbHh/a9uCGhtQy0CKGQg3mSQqyX+Jj9Aqtbn8Zlxvq3j
         xc3SG5SADQyfMiw+QSK/SJHmgGv/RbbPHX/6VJyDZHy+W6MQPNEq7Cffhted48tKiaAx
         NJBbuMJiiqC4zgZ2wxGwt0cUWUrbWdDtHUK9nmbe/E+n9rQA192WQrF1U/rGhHv59cJz
         a+Cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version:user-agent
         :date:message-id:subject:from:cc:to:delivery-date:dkim-signature;
        bh=TGUDhb5BgKsrVddjJCtwUUWfybfTpf8fmOa8PPOHY2A=;
        b=U7zgZ2eX99eja/uJHpvoY8guVLYQ2diDs9GgI4bbnBPL8Q5wqPBn9aka5uY/GIb/YP
         sAX7AjObd7YSmp3qWKfBLyS1LXKH9eUK6nQ1vwreP4eQBVdLLBGkAIQ9xbBT2HhGdRNx
         ENxP/XXDuoL3z4kDpoAjIdA7RJ4ADj14Zjg2dNn6gvqxz94/YIl0Lbs0JhqV4MwuMqNB
         kS6dSI85qvzCov4PzirH+SL+t46EThAOjEhX+HrpmwklcXQHt9DMRGdf968W5n5XYBhN
         QsGx9BEaQlbjzefVz0w45i6YzeJIU/jKhhwppm8MrK4YQGspFhvB3hy26ntnJULkeT4X
         0jRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@greenbone.net header.s=20170621 header.b=EqWr5SrD;
       spf=pass (google.com: domain of christian.fischer@greenbone.net designates 185.135.33.27 as permitted sender) smtp.mailfrom=christian.fischer@greenbone.net;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=greenbone.net
Received: from mail.greenbone.net (mail.greenbone.net. [185.135.33.27])
        by gmr-mx.google.com with ESMTPS id y1si156179wrl.4.2020.12.16.06.15.36
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Dec 2020 06:15:36 -0800 (PST)
Received-SPF: pass (google.com: domain of christian.fischer@greenbone.net designates 185.135.33.27 as permitted sender) client-ip=185.135.33.27;
Delivery-date: Wed, 16 Dec 2020 15:16:41 +0100
Received: from relay.greenbone.net ([185.135.33.26]:38392)
	by mail.greenbone.net with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <christian.fischer@greenbone.net>)
	id 1kpXbc-0002wr-My; Wed, 16 Dec 2020 15:16:40 +0100
Received: from [192.168.79.4] (port=42258)
	by relay.greenbone.net with esmtpsa (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.92)
	(envelope-from <christian.fischer@greenbone.net>)
	id 1kpXaZ-0000J6-Jd; Wed, 16 Dec 2020 15:15:35 +0100
To: open-iscsi@googlegroups.com
Cc: security@debian.org
From: "'Christian Fischer' via open-iscsi" <open-iscsi@googlegroups.com>
Subject: Clarification request on open-iscsi affected by uIP vulnerabilities
 (AMNESIA:33)
Message-ID: <48afec52-1107-f3df-1c74-0d55da4c1e11@greenbone.net>
Date: Wed, 16 Dec 2020 15:15:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Scan-Signature: d8dcbb635cbaeaf34551965068b944c8
X-Original-Sender: christian.fischer@greenbone.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@greenbone.net header.s=20170621 header.b=EqWr5SrD;       spf=pass
 (google.com: domain of christian.fischer@greenbone.net designates
 185.135.33.27 as permitted sender) smtp.mailfrom=christian.fischer@greenbone.net;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=greenbone.net
X-Original-From: Christian Fischer <christian.fischer@greenbone.net>
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

Hi,

the following CVEs related to the recent AMNESIA:33 vulnerabilities=20
affecting various open source network stack components:

https://nvd.nist.gov/vuln/detail/CVE-2020-13987
https://nvd.nist.gov/vuln/detail/CVE-2020-13988
https://nvd.nist.gov/vuln/detail/CVE-2020-17437
https://nvd.nist.gov/vuln/detail/CVE-2020-17438
https://nvd.nist.gov/vuln/detail/CVE-2020-17439
https://nvd.nist.gov/vuln/detail/CVE-2020-17440
https://nvd.nist.gov/vuln/detail/CVE-2020-24334
https://nvd.nist.gov/vuln/detail/CVE-2020-24335 (not published yet)

While the CVEs are mentioning Contiki and / or uIP a paper [1] of the=20
research teams reveals this detail:

 > The open-iscsi project, which provides an implementation of the iSCSI
 > protocol used by Linux distributions, such as Red Hat, Fedora, SUSE
 > and Debian, also imports part of the uIP code. Again, we were able to
 > detect that some CVEs apply to it.

and

 > Some of the vendors and projects using these original stacks, such as
 > open-iscsi, issued their own patches.

Unfortunately the "some CVEs apply to it" is not further specified (not=20
even the CVEs for open-iscsi are listen) and i wasn't able to pinpoint=20
the exact details. Some sources [2] mention 2.1.12 as the fixed version=20
of open-iscsi (which is wrong as the latest available version is 2.1.2=20
from July 2020, i have already contacted the CISA about that a few days=20
ago but haven't received any response yet) while others [3] mention <=3D=20
2.1.1 as vulnerable.

As none of the current releases listed at [4] mention the uIP=20
vulnerabilities in some way i would like to ask for clarification of the=20
following:

- Which CVEs of uIP applies to the code base of uIP imported into=20
open-iscsi?
- Which releases of open-iscsi are affected?
- Which release of open-iscsi is fixing one or more of this vulnerabilities=
?

Thank you very much in advance for a response.

Regards,

[1]=20
https://www.forescout.com/company/resources/amnesia33-how-tcp-ip-stacks-bre=
ed-critical-vulnerabilities-in-iot-ot-and-it-devices/
[2] https://us-cert.cisa.gov/ics/advisories/icsa-20-343-01
[3]=20
https://www.heise.de/news/Amnesia-33-Sicherheitshinweise-und-Updates-zu-den=
-TCP-IP-Lecks-im-Ueberblick-4984341.html
[4] https://github.com/open-iscsi/open-iscsi/releases

--=20

Christian Fischer | PGP Key: 0x54F3CE5B76C597AD
Greenbone Networks GmbH | https://www.greenbone.net
Neumarkt 12, 49074 Osnabr=C3=BCck, Germany | AG Osnabr=C3=BCck, HR B 202460
Gesch=C3=A4ftsf=C3=BChrer: Dr. Jan-Oliver Wagner

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/48afec52-1107-f3df-1c74-0d55da4c1e11%40greenbone.net.
