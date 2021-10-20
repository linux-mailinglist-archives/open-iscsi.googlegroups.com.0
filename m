Return-Path: <open-iscsi+bncBCZIB3V7XQOBBRWKYCFQMGQEOO2SKVA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id BEC21434D51
	for <lists+open-iscsi@lfdr.de>; Wed, 20 Oct 2021 16:18:47 +0200 (CEST)
Received: by mail-ot1-x337.google.com with SMTP id z29-20020a9d469d000000b00552d85e0e0fsf3769559ote.5
        for <lists+open-iscsi@lfdr.de>; Wed, 20 Oct 2021 07:18:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634739526; cv=pass;
        d=google.com; s=arc-20160816;
        b=PnivzsUB9xQP+DfjcizN0flvczW/E+X59OISkbz5tO3sS0YOsLk+yX1jtK9KoTFJkQ
         IJbn0R0J6eqj4kQnbgpeDSf0/DanukufvS1mdqK/K4jx0gtoFGOn5VXFymLCIMZ96rVp
         KjWM3GgmdJZkshIa3Z8Eaqejma/tiRk3RePcOSHMtzF8tGjsGCXEatcAMPo2ZejkH3rK
         IwG1GplIMCxHBF0JZBi6ugrlJRn9tTP7VvyyBnwTlZXOV9Det5Dg2nS9Fxi3ywKrOL15
         JLAzHmvn5EtN2ZVv5wDAUDpmItqnHIBFNahFEUhg7OWStGJwxPvTTmomQ406TmzyHQze
         cC/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:sender:dkim-signature;
        bh=3xALHE1JB6zK6HyhZhuoNn4TGi+XrXIvNKtVxXz9B8E=;
        b=h+RilswxpyflTO5kRA3Tgz6TvyThqLy/vLrf+8JTy9ppx0ALTaUhYFNuDs0LFyLFf5
         LyNDYAjvq0kCITYg3mAUpFu1SVF07z11siIFuB4kUSmtKjNjilqbOkqBBzj0NW6dytJT
         KdHNAJyGENkcpC0FHMlSyOK5RCuwgq7x5EYYa39gpWrpM+LzO59DbDGEi1aXMoNE/A2s
         KlER5Dkb5JQPq0A3zbJ/ilcYTUhB+muANQibZDcmSjD5h+SUjvHNushjtZd3fbPX8GbO
         +s9QJjdTSW67EwfTc/9xW8Lc4j/PpQ02I1vWBiJEi9kTVTKlGuIT9B1NV+sGO05SLqX4
         loOQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=LOF3jnZa;
       spf=pass (google.com: domain of vjuranek@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=vjuranek@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3xALHE1JB6zK6HyhZhuoNn4TGi+XrXIvNKtVxXz9B8E=;
        b=nqqGsR3l83J9n6zuplaiXI6A7sD6X/1soFipSDxrrBWOC6du+j/nt78dCtO91fTyzq
         Ka/cUfZqnfEUL3nuGWml+KVlob4/h2kr3n8CSIDCt2q28ylkUmHxaSLiOe2U/87gp2hj
         9V6aLYcpAKIji9ZQ4hSTcaYAGeyKzeCp/FSVhTLgK3JyaSU3o2Z7RuWzNuCRxbLromJ5
         HBVF+kTEekBRU0qP5wI4qo0lRQiWQKfalI2wr5FWEccjvuED9voMbl9xiQDh+8hRPVoe
         kRurWy6dr+m8Qrw+LMIeM+YsWqK57IB3f145j/qIKfsmaOi9jjqCJVDmQTbhS9g99sYl
         5aPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=3xALHE1JB6zK6HyhZhuoNn4TGi+XrXIvNKtVxXz9B8E=;
        b=u0rtDsnoGNJUXkI0WwD77w7/cXgNrjxw7Ab4EYypbgakXtRqIfl7NMV7DdT4qWCIZw
         MJVrg39HHuWhIGi9cwFRPSLOiKok4eiANdpALmilA/+jIdQy0h3/7xfJ94GGl3IyYpDf
         a98HWM4yBjLp8jrTTmlJl7KFolV8lAnQmaznF5NBiS6eibIjk8tbORFKq+bFR8A7oL2b
         QRvbEbD3WL0KvN98ikLiLeQvr8FbedHWOOjwfoAIYmOrVUPuTKylk9BvmRH6VH+NezVf
         XhKo0C8+JPq5iLKvq26nOJnDTkdXM7xpNpnqjEZnlHt3sI2G3BFcVv6dGG3C2C+J65Hn
         DAYA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533u4FU+AW0RkKWRu0diyFWD3uJXbfACG6QTpTqbxY7Kocf8oXpJ
	jsKIoz2SR1kW6/d2KQgcKe8=
X-Google-Smtp-Source: ABdhPJxO51r9BOt90QInE5rhCLBkQu9C2/fhlcXLOUUHYBmglZhkBxvteGvswk1ahb1eZvXjsjQR7A==
X-Received: by 2002:a05:6830:557:: with SMTP id l23mr106490otb.125.1634739526439;
        Wed, 20 Oct 2021 07:18:46 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aca:39c1:: with SMTP id g184ls722818oia.8.gmail; Wed, 20 Oct
 2021 07:18:46 -0700 (PDT)
X-Received: by 2002:aca:e142:: with SMTP id y63mr10166860oig.112.1634739526192;
        Wed, 20 Oct 2021 07:18:46 -0700 (PDT)
Received: by 2002:aca:bac4:0:b0:26b:80ac:4d09 with SMTP id 5614622812f47-298eaa37f03msb6e;
        Tue, 19 Oct 2021 23:58:50 -0700 (PDT)
X-Received: by 2002:a9d:701a:: with SMTP id k26mr10039658otj.109.1634713129792;
        Tue, 19 Oct 2021 23:58:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634713129; cv=none;
        d=google.com; s=arc-20160816;
        b=RyF5ifUYv/ODJeetYdQAMVP2AyKb2QMCXO1C4Ss6ptsGpBJneETqYnal51ai2de4T7
         rsvcER7A1sBYVY704hP11M0ONTp8cjMoeF5qvsTLHQ6+oZ6V0CMxfU6JVWBR9blACqUf
         f8ED+9W+l0klO7LCxYjSoLMhUPU1PvopwB75Dngo8lGDSruSsOmlmIfsaBgX8+9eM1jz
         eTSwDyehIBQqSAMUSDkMi0XR8oOdF4Z40efAmlwwAPzjrar+SLie2lS5dNXqgk3FHhym
         nX2F42JPkE7NeYeqwVGxVxHGXOqwsNOmrczLMJsPE6CrS+TncxlSKoYrlsMqfU3HhJta
         aUuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:subject:cc:to:from:dkim-signature;
        bh=q/IhUW61WhUEbckqCAzi2pEO6EfRA1EDePISnKkmyoE=;
        b=cJgRu1R21dzMKNCTwjEp906T3LWWVclNYLp7zZRFdTAcvLjwtr8tWyxKneJQ5os5LV
         27vVKNgoIE80W2tvo2yVKhdeF7EeWdpyekbjuo9XY2nNR6Na2DU0K1v7g52pt01Slc/B
         1E+qw7+IjWeRt0DVsEomhGnYRY0FAw2F9e8sF9TVG11UjN4ZEvksu82HM4cwX0I2jLr0
         uyPv61qVgubN+gm1bBtsLOgCuZQtipfprjiWHH50hmpY9CZzI+98kQxwXff4ZNJU+X8O
         0EOCTkyqjL0Rw6nMW4lz3qpza9El8fCzp9Huym+w2cHas0mhCkZMWcMyPLn2VYQtA2By
         6Cnw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=LOF3jnZa;
       spf=pass (google.com: domain of vjuranek@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=vjuranek@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id o24si137247otp.2.2021.10.19.23.58.49
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Oct 2021 23:58:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of vjuranek@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-294-i_aDDXsAM5CtnFmbWs-E9g-1; Wed, 20 Oct 2021 02:58:43 -0400
X-MC-Unique: i_aDDXsAM5CtnFmbWs-E9g-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A3CAF10168C0
	for <open-iscsi@googlegroups.com>; Wed, 20 Oct 2021 06:58:42 +0000 (UTC)
Received: from localhost.localdomain (unknown [10.40.192.218])
	by smtp.corp.redhat.com (Postfix) with ESMTP id C276719C79;
	Wed, 20 Oct 2021 06:58:41 +0000 (UTC)
From: Vojtech Juranek <vjuranek@redhat.com>
To: open-iscsi@googlegroups.com
Cc: cleech@redhat.com, nsoffer@redhat.com
Subject: Concurrent usage of iscsiadm
Date: Wed, 20 Oct 2021 08:58:38 +0200
Message-ID: <4882593.9CP3fYhb5E@localhost.localdomain>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/signed; boundary="nextPart2150964.vBoWY3egPC"; micalg="pgp-sha256"; protocol="application/pgp-signature"
X-Original-Sender: vjuranek@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=LOF3jnZa;
       spf=pass (google.com: domain of vjuranek@redhat.com designates
 170.10.133.124 as permitted sender) smtp.mailfrom=vjuranek@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

--nextPart2150964.vBoWY3egPC
Content-Type: text/plain; charset="UTF-8"; protected-headers=v1
From: Vojtech Juranek <vjuranek@redhat.com>
To: open-iscsi@googlegroups.com
Cc: cleech@redhat.com, nsoffer@redhat.com
Subject: Concurrent usage of iscsiadm
Date: Wed, 20 Oct 2021 08:58:38 +0200
Message-ID: <4882593.9CP3fYhb5E@localhost.localdomain>

Hi,
I'd like to follow up with discussion about concurrent usage iscsiadm tool. It 
was discussed here about year ago, with suggestion not to use it concurrently 
[1]. On the other hand, comment [2] says it should be fine. Is the an agreement 
in open-iscsi community if the concurrent usage of iscsiadm is safe or not? If 
it's not safe, is there any bug for open-iscsi describing the issue and 
potential problems if iscsiadm is used concurrently?

The motivation why I'm popping up this again is that in oVirt project [3] we 
use a lock before calling iscsiadm to make sure it's not run in parallel. This 
causes us various issues (see e.g. BZ #1787192 [2]) and we'd like to get rid 
off this lock.

I run several thousands tests with our typical usage of iscsiadm [4], running 
iscsiadm in parallel and haven't spot any issue so far. This suggests removing 
the lock can be safe, but of course my tests could be just a pure luck. So 
before removing this lock from our code base, I'd like to know your thoughts 
about it.

Thanks
Vojta

[1] https://groups.google.com/g/open-iscsi/c/OHOdIm1W274/m/9l5NcPQHBAAJ
[2] https://bugzilla.redhat.com/show_bug.cgi?id=1787192#c18
[3] https://www.ovirt.org/
[4] https://github.com/oVirt/vdsm/blob/master/tests/storage/stress/
initiator.py

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/4882593.9CP3fYhb5E%40localhost.localdomain.

--nextPart2150964.vBoWY3egPC
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEp6bZMIUgcejwGV0/ep5DIt+WOWsFAmFvvh4ACgkQep5DIt+W
OWtkQAf/WGSOxHYH+ruhE+r/bVKlEmug0Naq69aKi4+zyYvJacO0Y9DVQ0BUNtGj
FHPp7R68WqKAc9p8UbA88FPtRJzpj7Ik3Ii2W5InVIwDwixKSTetv2myGrTWUVMy
9XS8K07JlKc6/RThc1+IAhmY5gW3hum5aqmLfgyT95W9SkjNFdpyA9RPOfVDTICN
fedxVTj3rm6RD0BLHzStDFpGeIFCwb6cn+fdBEr6c+hMQxVgf/Y3Nf0AmONK0SJr
SqfFxHkvPYPb3b/yrRNE0EEcJv1eAJ4Zw9AnfRdLvRqZZybL/M63Li6OnVHK9LB1
nj8UKxp7ewc6jGwCGk689O32+oSLWA==
=rM75
-----END PGP SIGNATURE-----

--nextPart2150964.vBoWY3egPC--



